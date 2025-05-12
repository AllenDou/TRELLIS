export ATTN_BACKEND=xformers
export LD_LIBRARY_PATH=/usr/local/cuda-12.4/lib64/:$LD_LIBRARY_PATH
rm -rf outputs/*
python train.py --config configs/vae/slat_vae_dec_mesh_swin8_B_64l8_fp16.json --output_dir outputs/slat_vae_dec_mesh_swin8_B_64l8_fp16_1node --data_dir datasets/ObjaverseXL_sketchfab/
