import sys
import os
import argparse
from subprocess import Popen, PIPE


def main(parser, input_file, out_dir, candc_bin_dir, candc_models_dir, ccg2lambda_dir):
    import ipdb; ipdb.set_trace()
    print("Tokenizing...")
    file_prefix = input_file.split(".")[0]
    p = Popen(f"sed -f {ccg2lambda_dir}/en/tokenizer.sed > {file_prefix}.tok", shell=True)
    p.wait()
    from preprocess import preprocess
    print("Parsing with candc...")
    preprocess(f"{file_prefix}.tok")  # produces file_prefix.tok.clean
    # produces {out_dir}/{file_prefix}.candc.parsed.xml
    p = Popen(f"{candc_bin_dir}/candc --models {candc_models_dir}" +
              f" --candc-printer xml --input {file_prefix}.tok.clean" +
              f" --output {out_dir}/{file_prefix}.candc.parsed.xml --log mylog", shell=True)
    p.wait()
    from mytree2transccg import convert2transccg
    convert2transccg(f"{out_dir}/{file_prefix}.candc.parsed.xml",
                     parser,
                     f"{file_prefix}.tok.preprocess.log")


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument("input_file")
    parser.add_argument("parser")
    parser.add_argument("-o", "--out-dir", default=".")
    parser.add_argument("--candc-bin-dir", default="../candc-1.00/bin")
    parser.add_argument("--candc-models-dir", default="../candc-1.00/models")
    parser.add_argument("--ccg2lambda-dir", default="../ccg2lambda")
    args = parser.parse_args()
    sys.path.append(os.path.abspath("./src"))
    main(args.parser, args.input_file, args.out_dir, args.candc_bin_dir,
         args.candc_models_dir, args.ccg2lambda_dir)

