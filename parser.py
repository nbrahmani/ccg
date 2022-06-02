import sys
import os
import argparse
from subprocess import run, Popen, PIPE
from pathlib import Path
from ccg2mono.src.preprocess import preprocess


def main(parser, input_file, out_dir, candc_bin_dir, candc_models_dir, ccg2lambda_dir):
    if parser == "candc":
        print("Tokenizing...")
        file_prefix = input_file.split(".")[0]
        out_file = os.path.join(out_dir, file_prefix + ".tok")
        if Path(out_file).exists():
            print("Token file already exists")
        else:
            run(f"sed -f {ccg2lambda_dir}/en/tokenizer.sed {input_file} > {out_file}", shell=True)

        # from preprocess import preprocess
        # produces {file_prefix}.tok.clean
        if Path(out_file + ".clean").exists():
            print("Cleaned token file already exists")
        else:
            preprocess(f"{file_prefix}.tok")

        # produces {out_dir}/{file_prefix}.candc.parsed.xml
        parsed_file = os.path.join(out_dir, f"{file_prefix}.candc.parsed.xml")
        if Path(parsed_file).exists():
            print("Parsed file already exists")
        else:
            print("Parsing with candc...")
            p = Popen(f"{os.path.join(candc_bin_dir, 'candc')} --models {candc_models_dir}" +
                      f" --candc-printer xml --input {file_prefix}.tok.clean" +
                      f" --output {os.path.join(out_dir, file_prefix)}.candc.parsed.xml --log mylog", shell=True,
                      stdout=PIPE, stderr=PIPE)
            out, err = p.communicate()
        from mytree2transccg import convert2transccg
        print("Building Polarity annotations with convert2transccg")
        convert2transccg(os.path.join(out_dir, f"{file_prefix}.candc.parsed.xml"),
                         parser,
                         f"{file_prefix}.tok.preprocess.log")
    elif parser == "depccg":
        import ipdb; ipdb.set_trace()
        print("Tokenizing...")
        file_prefix = input_file.split(".")[0]
        out_file = os.path.join(out_dir, file_prefix + ".tok")
        if Path(out_file).exists():
            print("Token file already exists")
        else:
            # (f"sed -f {ccg2lambda_dir}/en/tokenizer.sed {input_file} > {out_file}", shell=True)
            run(f"cat {input_file} | {ccg2lambda_dir}/en/tokenizer.sed | perl -pe 's/ \n/\n/g; s/ \.//g; s/ ,//g; s/\(/-LRB-/g; s/\)/-RRB-/g' > {file_prefix}.tok", shell=True)


        # from preprocess import preprocess
        # produces {file_prefix}.tok.clean
        if Path(out_file + ".clean").exists():
            print("Cleaned token file already exists")
        else:
            preprocess(f"{file_prefix}.tok")

        # produces {out_dir}/{file_prefix}.depccg.parsed.xml
        parsed_file = os.path.join(out_dir, f"{file_prefix}.depccg.parsed.xml")
        if Path(parsed_file).exists():
            print("Parsed file already exists")
        else:
            print("Parsing with depccg...")
            from depccg import __main__
            from depccg.argparse import parse_args
            sys.argv = [sys.argv[0], 'en', '--model', 'elmo', '-f', 'auto_extended', '-a', 'spacy']
            parse_args(__main__.main)
            # run(f"cat {file_prefix}.tok.clean | python3 -m depccg en --model elmo -f auto_extended -a spacy > {file_prefix}.depccg.parsed.txt", shell=True)

        run(f"sed -i 's/(</{{</g; s/>)/>}}/g; s/ )/ }}/g' {file_prefix}.depccg.parsed.txt", shell=True)

        run(f"/home/prototype/brahmani/code/ccg/ccg2mono/src/mytree2transccg.py {file_prefix}.depccg.parsed.txt depccg  {file_prefix}.tok.preprocess.log > {file_prefix}.depccg2transccg.xml", shell=True)


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument("input_file")
    parser.add_argument("parser")
    parser.add_argument("-o", "--out-dir", default=".")
    parser.add_argument("--candc-bin-dir", default="./candc/bin")
    parser.add_argument("--candc-models-dir", default="./candc/models")
    parser.add_argument("--ccg2lambda-dir", default="/home/prototype/brahmani/code/ccg/ccg2lambda")
    args = parser.parse_args()
    sys.path.append(os.path.abspath("/home/prototype/brahmani/code/ccg2mono/src"))
    main(**args.__dict__)
