:- module(nationality,[nationality/2,nationality/3,nationality/4,nationality/5]).

nationality(X,Y):- nationality(X,_,Y,_,_).
nationality(X,Pos,Y):- nationality(X,Pos,Y,_,_).
nationality(X,Pos,Y,Z):- nationality(X,Pos,Y,Z,_).

% turkmen
% guatemalan
% roman
% east asia

nationality(afghan,_,afghanistan,afghanistan,country).
nationality(african,_,africa,africa,continent).
nationality(arabian,_,arabia,arabian_peninsula,'world-region').
nationality(asian,_,asia,asia,continent).
nationality(albanian,_,albania,albania,country).
nationality(algerian,_,algeria,algeria,country).
nationality(american,_,america,united_states,country).
nationality(american_samoan,_,american_samoa,american_samoa,country).
nationality(andorran,_,andorra,andorra,country).
nationality(angolan,_,angola,angola,country).
nationality(anguillan,_,anguilla,anguilla,country).
nationality(antiguan,_,antigua,antigua,country).
nationality(argentinian,_,argentina,argentina,country).
nationality(argentine,_,argentina,argentina,country).
nationality(armenian,_,armenia,armenia,country).
nationality(aruban,_,aruba,aruba,country).
nationality(australian,_,australia,australia,country). 
nationality(aussie,_,australia,australia,country). 
nationality(austrian,_,austria,austria,country).
nationality(azerbaijani,_,azerbadijan,azerbadijan,country).
nationality(lucayan,_,bahamas,bahamas,country).
nationality(bahamian,_,bahamas,bahamas,country).
nationality(balkan,_,balkan,balkans,'world-region').
nationality(bahraini,_,bahrain,bahrain,country).
nationality(bangladeshi,_,bangladesh,bangladesh,country).
nationality(barbadian,_,barbados,barbados,country).
nationality(barbudan,_,barbuda,barbuda,country).
nationality(basotho,_,basotho,basotho,country).
nationality(batswana,_,botswana,botswana,country).
nationality(belarusian,_,belarus,belarus,country).
nationality(belgian,_,belgium,belgium,country).
nationality(belizean,_,belize,belize,country).
nationality(beninese,_,benin,benin,country).
nationality(bermudian,_,bermuda,bermuda,country).
nationality(bhutanese,_,bhutan,bhutan,country).
nationality(bolivian,_,bolivia,bolivia,country).
nationality(bosnian,_,bosnia,bosnia,country).
nationality(brazilian,_,brazil,brazil,country).
nationality(british,_,britain,britain,country).
nationality(british_virgin_islander,n,british_virgin_islands,british_virgin_islands,country).
nationality(briton,_,britain,britain,country).
nationality(bruneian,_,brunei,brunei,country).
nationality(bulgarian,_,bulgaria,bulgaria,country).
nationality(burkinabe,_,burkina,burkina,country).
nationality(burmese,_,burma,burma,country).
nationality(myanmaran,_,burma,burma,country).
nationality(burundian,_,burundi,burundi,country).
nationality(cambodian,_,cambodia,cambodia,country).
nationality(cameroonian,_,cameroon,cameroon,country).
nationality(canadian,_,canada,canada,country).
nationality(cape_verdean,_,cape_verde,cape_verde,country).
nationality(caymanian,_,cayman_islands,cayman_islands,country).
nationality(central_african,_,central_africa,central_africa,country).
nationality(chadian,_,chad,chad,country).
nationality(channel_islander,_,channel_islands,channel_islands,country).
nationality(chechen,_,chechnya,chechnya,country).
nationality(chechnyan,_,chechnya,chechnya,country).
nationality(chilean,_,chili,chili,country).
nationality(chinese,_,china,china,country).
nationality(christmas_island,_,christmas_islands,christmas_islands,country).
nationality(christmas_islander,_,christmas_islands,christmas_islands,country).
nationality(chuukese,_,chuuk,chuuk,country).
nationality(cocos_islander,_,cocos_islands,cocos_islands,country).
nationality(colombian,_,colombia,colombia,country).
nationality(comoran,_,comoros,comoros,country).
nationality(congo,_,congo,congo,country).
nationality(congolese,_,congo,congo,country).
nationality(cook_islander,_,cook_islands,cook_islands,country).
nationality(costa_rican,_,costa_rica,costa_rica,country).
nationality(croat,n,croatia,croatia,country).
nationality(crimean,n,crimea,crimea,'country-region'). 
nationality(croatian,_,croatia,croatia,country).
nationality(cuban,_,cuba,cuba,country).
nationality(cypriot,_,cyprus,cyprus,country).
nationality(czech,_,czech_republic,czech_republic,country).
nationality(dane,n,denmark,denmark,country). 
nationality(danish,_,denmark,denmark,country).
nationality(djiboutian,_,djibouti,djibouti,country).
nationality(dutch_antillean,_,netherlands_antilles,netherlands_antilles,country).
nationality(dominican,_,dominican_republic,dominican_republic,country).
nationality(dutch,a,netherlands,netherlands,country).
nationality(dutchman,n,netherlands,netherlands,country).
nationality(dutchwoman,n,netherlands,netherlands,country).
nationality(ecuadorian,_,ecuador,ecuador,country).
nationality(egyptian,_,egypt,egypt,country).
nationality(english,_,england,england,country).
nationality(englishman,n,england,england,country). 
nationality(emirati,_,united_arab_emirates,united_arab_emirates,country).
nationality(equatoguinean,_,equatorial_guinea,equatorial_guinea,country).
nationality(equatorial_guinean,_,equatorial_guinea,equatorial_guinea,country).
nationality(eritrean,_,eritrea,eritrea,country).
nationality(estonian,_,estonia,estonia,country).
nationality(ethiopian,_,ethiopia,ethiopia,country).
nationality(european,_,europe,europe,continent).
nationality(falkland_islander,_,falkland_islands,falkland_islands,country).
nationality(faroese,_,faroe_islands,faroe_islands,country).
nationality(fijian,_,fiji,fiji,country).
nationality(filipino,_,philippines,philippines,country).
nationality(finn,n,finland,finland,country). 
nationality(finnish,a,finland,finland,country).
nationality(french,_,france,france,country).
nationality(french_guianese,_,french_guiana,french_guiana,country).
nationality(french_polynesian,_,french_polynesia,french_polynesia,country).
nationality(frenchman,_,france,france,country).
nationality(frenchwoman,_,france,france,country).
nationality(futunan,_,futuna,futuna,country).
nationality(gabonese,_,gabon,gabon,country).
nationality(gambian,_,gambia,gambia,country).
nationality(georgian,_,georgia,georgia,country).
nationality(german,_,germany,germany,country).
nationality(ghanaian,_,ghana,ghana,country).
nationality(gibraltar,_,gibraltar,gibraltar,country).
nationality(gibraltarian,_,gibraltar,gibraltar,country).
nationality(greek,_,greece,greece,country).
nationality(greenlander,_,greenland,greenland,country).
nationality(greenlandic,_,greenland,greenland,country).
nationality(grenadian,_,grenada,grenada,country).
nationality(guadeloupe,_,guadeloupe,guadeloupe,country).
nationality(guadeloupian,_,guadeloupe,guadeloupe,country).
nationality(guamanian,_,guam,guam,country).
nationality(guatemalan,_,guatemala,guatemala,country).
nationality(guinean,_,guinea,guinea,country).
nationality(guyanese,_,guyana,guyana,country).
nationality(haitian,_,haiti,haiti,country).
nationality(herzegovinian,_,herzegovinia,herzegovinia,country).
nationality(honduran,_,honduras,honduras,country).
nationality(hong_konger,_,hong_kong,hong_kong,country).
nationality(hungarian,_,hungary,hungary,country).
nationality(icelander,n,iceland,iceland,country).
nationality(icelandic,a,iceland,iceland,country).
nationality(indian,_,india,india,country).
nationality(indonesian,_,indonesia,indonesia,country).
nationality(iranian,_,iran,iran,country).
nationality(iraqi,_,iraq,iraq,country).
nationality(irish,_,ireland,ireland,country).
nationality(irishman,_,ireland,ireland,country).
nationality(irishwoman,_,ireland,ireland,country).
nationality(israeli,_,israel,israel,country).
nationality(italian,_,italy,italy,country).
nationality(ivoirian,_,'cote_d\'ivoire',ivory_coast,country).
nationality(jamaican,_,jamaica,jamaica,country).
nationality(japanese,_,japan,japan,country).
nationality(jordanian,_,jordan,jordan,country).
nationality(kashmiri,_,kashmir,kashmir,'world-region').
nationality(kazakh,_,kazakhstan,kazakhstan,country).
nationality(kazakhstani,_,kazakhstan,kazakhstan,country).
nationality(kenyan,_,kenya,kenya,country).
nationality(kittitian,_,saint_kitts,saint_kitts,country).
nationality(korean,_,korea,korea,country).
nationality(krygyz,_,kyrgyzstan,kyrgyzstan,country).
nationality(kyrgyz,_,kyrgyzstan,kyrgyzstan,country).
nationality(kyrgyzstani,_,kyrgyzstan,kyrgyzstan,country).
nationality(kurd,_,kurdistan,kurdistan,'world-region').
nationality(kuwaiti,_,kuwait,kuwait,country).
nationality(north_korean,_,north_korea,north_korea,country).
nationality(south_korean,_,south_korea,south_korea,country).
nationality(lao,_,laos,laos,country).
nationality(laotian,_,laos,laos,country).
nationality(latvian,_,latvia,latvia,country).
nationality(lebanese,_,lebanon,lebanon,country).
nationality(liberian,_,liberia,liberia,country).
nationality(libyan,_,libya,libya,country).
nationality(liechtensteiner,_,liechtenstein,liechtenstein,country).
nationality(lithuanian,_,lithuania,lithuania,country).
nationality(luxembourger,_,luxembourg,luxembourg,country).
nationality(macedonian,_,macedonia,republic_of_macedonia,country).
nationality(malagasy,_,malaga,malaga,country).
nationality(malawian,_,malawi,malawi,country).
nationality(malaysian,_,malaysia,malaysia,country).
nationality(maldivian,_,maldives,maldives,country).
nationality(malian,_,mali,mali,country).
nationality(maltese,_,malta,malta,country).
nationality(manx,a,manx,manx,country).
nationality(manxman,n,manx,manx,country).
nationality(manxwoman,n,manx,manx,country).
nationality(marshallese,_,marshall_islands,marshall_islands,country).
nationality(martiniquais,_,martinique,martinique,country).
nationality(mauritanian,_,mauritiania,mauritiania,country).
nationality(mauritian,_,mauritius,mauritius,country).
nationality(melanesian,_,melanesia,melanesia,country).
nationality(mexican,_,mexico,mexico,country).
nationality(micronesian,_,micronesia,micronesia,country).
nationality(moldovan,_,moldova,moldova,country).
nationality(monacan,_,monaco,monaco,country).
nationality(monegasque,_,monaco,monaco,country).
nationality(mongolian,_,mongolia,mongolia,country).
nationality(montenegrin,_,montenegro,montenegro,country).
nationality(montserratian,_,montserrat,montserrat,country).
nationality(moroccan,_,morroco,morroco,country).
nationality(mosotho,_,lesotho,lesotho,country).
nationality(motswana,_,botswana,botswana,country).
nationality(mozambican,_,mozambique,mozambique,country).
nationality(namibian,_,namibia,namibia,country).
nationality(nauruan,_,nauru,nauru,country).
nationality(nepalese,_,nepal,nepal,country).
nationality(nevisian,_,nevis,nevis,country).
nationality(new_caledonian,_,new_caledonia,new_caledonia,country).
nationality(new_zealander,_,new_zealand,new_zealand,country).
nationality(nicaraguan,_,nicaragua,nicaragua,country).
nationality(nigerian,_,nigeria,nigeria,country).
nationality(nigerien,_,niger,niger,country).
nationality(niuean,_,niue,niue,country).
nationality(norfolk_islander,_,norfolk_islands,norfolk_islands,country).
nationality(norwegian,_,norway,norway,country).
nationality(novakatkan,_,novakatka,novakatka,country).
nationality(omani,_,oman,oman,country).
nationality(pakistani,_,pakistan,pakistan,country).
nationality(palauan,_,palau,palau,country).
nationality(palestinian,_,palestine,state_of_palestine,country).
nationality(panamanian,_,panama,panama,country).
nationality(papua_new_guinean,_,papua_new_guinea,papua_new_guinea,country).
nationality(paraguayan,_,paraguay,paraguay,country).
nationality(peruvian,_,peru,peru,country).
nationality(persian,_,persia,persia,country).
nationality(philippine,_,philippines,philippines,country).
nationality(pitcairn_islander,_,pitcairn_islands,pitcairn_islands,country).
nationality(pohnpeian,_,pohnpei,pohnpei,country).
nationality(pole,n,poland,poland,country). 
nationality(polish,a,poland,poland,country).
nationality(portuguese,_,portugal,portugal,country).
nationality(puerto_rican,_,puerto_rica,puerto_rica,country).
nationality(qatari,_,qatar,qatar,country).
nationality(reunionese,_,la_reunion,la_reunion,country).
nationality(romanian,_,romania,romania,country).
nationality(russian,_,russia,russia,country).
nationality(rwandan,_,rwandan,rwandan,country).
nationality(sahraoui,_,sahara,sahara,country).
nationality(sahraouian,_,sahara,sahara,country).
nationality(sahrawi,_,sahara,sahara,country).
nationality(sahrawian,_,sahara,sahara,country).
nationality(saint_lucian,_,saint_lucia,saint_lucia,country).
nationality(saint_helenian,_,saint_helena,saint_helena,country).
nationality(saint_vincentian,_,saint_vincent,saint_vincent,country).
nationality(salvadoran,_,el_salvador,el_salvador,country).
nationality(sammarinese,_,san_marino,san_marino,country).
nationality(samoan,_,samoa,samoa,country).
nationality(sao_tomean,_,sao_tome,sao_tome,country).
nationality(saudi,_,saudi_arabia,saudi_arabia,country).
nationality(saudi_arabian,_,saudi_arabia,saudi_arabia,country).
nationality(scottish,_,scotland,scotland,country).
nationality(scot,n,scotland,scotland,country).
nationality(scotsman,n,scotland,scotland,country).
nationality(senegalese,_,senegal,senegal,country).
nationality(serb,n,serbia,serbia,country).
nationality(serbian,_,serbia,serbia,country).
nationality(seychellois,_,seychelles,seychelles,country).
nationality(sierra_leonean,_,sierra_leona,sierra_leona,country).
nationality(singaporean,_,singapore,singapore,country).
nationality(slovak,_,slovakia,slovakia,country).
nationality(slovene,_,slovenia,slovenia,country).
nationality(slovenian,_,slovenia,slovenia,country).
nationality(solomon_islander,_,solomon_islands,solomon_islands,country).
nationality(somali,_,somalia,somalia,country).
nationality(south_african,_,south_africa,south_africa,country).
nationality(african,_,africa,africa,country).
nationality(spaniard,_,spain,spain,country).
nationality(spanish,_,spain,spain,country).
nationality(sri_lankan,_,sri_lanka,sri_lanka,country).
nationality(sudanese,_,sudan,sudan,country).
nationality(surinamer,_,suriname,suriname,country).
nationality(surinamese,_,suriname,suriname,country).
nationality(swazi,_,swaziland,swaziland,country).
nationality(swede,n,sweden,sweden,country).
nationality(swedish,a,sweden,sweden,country).
nationality(swiss,_,switzerland,switzerland,country).
nationality(syrian,_,syria,syria,country).
nationality(taiwanese,_,taiwan,taiwan,country).
nationality(tajikistani,_,tajikistan,tajikistan,country).
nationality(tanzanian,_,tanzania,tanzania,country).
nationality(thai,_,thailand,thailand,country).
nationality(tibetan,_,tibet,tibet,'country-region').
nationality(timorese,_,timor,timor,country).
nationality(tobagonian,_,tobago,tobago,country).
nationality(togolese,_,togo,togo,country).
nationality(tokelauan,_,tokelau,tokelau,country).
nationality(tongan,_,tongan,tongan,country).
nationality(trinidadian,_,trinidad,trinidad,country).
nationality(tunisian,_,tunisia,tunisia,country).
nationality(turk,n,turkey,turkey,country).
nationality(turkish,_,turkey,turkey,country).
nationality(turkman,_,turkmenistan,turkmenistan,country).
nationality(turkoman,_,turkmenistan,turkmenistan,country).
nationality(turkmen,_,turkmenistan,turkmenistan,country).
nationality(tuvaluan,_,tuvalu,tuvalu,country).
nationality(ugandan,_,uganda,uganda,country).
nationality(ukrainian,_,ukraine,ukraine,country).
nationality(uruguayan,_,uruguay,uruguay,country).
nationality(uzbek,_,uzbekistan,uzbekistan,country).
nationality(uzbekistani,_,uzbekistan,uzbekistan,country).
nationality(venezuelan,_,venezuela,venezuela,country).
nationality(vietnamese,_,vietnam,vietnam,country).
nationality(vincentian,_,st_vincent,st_vincent,country).
nationality(virgin_islander,_,virgin_islands,virgin_islands,country).
nationality(wallisian,_,wallis,wallis,country).
nationality(welsh,a,wales,wales,country).
nationality(welshman,n,wales,wales,country).
nationality(yapese,_,yap,yap,country).
nationality(yugoslav,_,yugoslavia,yugoslavia,country).
nationality(yemeni,_,yemen,yemen,country).
nationality(zambian,_,zambia,zambia,country).
nationality(zimbabwean,_,zimbabwe,zimbabwe,country).
