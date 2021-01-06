# RCAN_BIX2_G10R20P48, input=48x48, output=96x96
# pretrained model can be downloaded from https://www.dropbox.com/s/mjbcqkd4nwhr6nu/models_ECCV2018RCAN.zip?dl=0
#python main.py --template RCAN --save RCAN_BIX2_G10R20P48 --scale 2 --reset --save_results --patch_size 96
# RCAN_BIX3_G10R20P48, input=48x48, output=144x144
#python main.py --template RCAN --save RCAN_BIX3_G10R20P48 --scale 3 --reset --save_results --patch_size 144 --pre_train ../experiment/model/RCAN_BIX2.pt
###CUDA_VISIBLE_DEVICES=1,2 python3 main.py --template RCAN --save RCAN_BIX3_G10R20P48 --scale 3 --reset --save_results --patch_size 72 --n_threads 1 --ext img --n_GPUs 2
# RCAN_BIX4_G10R20P48, input=48x48, output=192x192
#python main.py --template RCAN --save RCAN_BIX4_G10R20P48 --scale 4 --reset --save_results --patch_size 192 --pre_train ../experiment/model/RCAN_BIX2.pt
# RCAN_BIX8_G10R20P48, input=48x48, output=384x384
#python main.py --template RCAN --save RCAN_BIX8_G10R20P48 --scale 8 --reset --save_results --patch_size 384 --pre_train ../experiment/model/RCAN_BIX2.pt

CUDA_VISIBLE_DEVICES=3 python3 main.py --template RCAN --model RCAN --scale 3 --data_test Demo --pre_train ../experiment/RCAN_BIX3_G10R20P48/model/model_latest.pt --test_only --save_results --ext img
#CUDA_VISIBLE_DEVICES=3 python3 main.py --template RCAN --scale 3 --pre_train ../experiment/RCAN_BIX3_G10R20P48/model/model_latest.pt --test_only --save_results
