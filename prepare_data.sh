export ATTN_BACKEND=xformers

rm -rf datasets/ObjaverseXL_sketchfab

. ./dataset_toolkits/setup.sh

python dataset_toolkits/build_metadata.py ObjaverseXL --source sketchfab --output_dir datasets/ObjaverseXL_sketchfab

python dataset_toolkits/download.py ObjaverseXL --output_dir datasets/ObjaverseXL_sketchfab --world_size 160000
python dataset_toolkits/build_metadata.py ObjaverseXL --output_dir datasets/ObjaverseXL_sketchfab

python dataset_toolkits/render.py ObjaverseXL --output_dir datasets/ObjaverseXL_sketchfab
python dataset_toolkits/build_metadata.py ObjaverseXL --output_dir datasets/ObjaverseXL_sketchfab

python dataset_toolkits/voxelize.py ObjaverseXL --output_dir datasets/ObjaverseXL_sketchfab
python dataset_toolkits/build_metadata.py ObjaverseXL --output_dir datasets/ObjaverseXL_sketchfab

python dataset_toolkits/extract_feature.py --output_dir datasets/ObjaverseXL_sketchfab
python dataset_toolkits/build_metadata.py ObjaverseXL --output_dir datasets/ObjaverseXL_sketchfab

python dataset_toolkits/encode_ss_latent.py --output_dir datasets/ObjaverseXL_sketchfab
python dataset_toolkits/build_metadata.py ObjaverseXL --output_dir datasets/ObjaverseXL_sketchfab

python dataset_toolkits/encode_latent.py --output_dir datasets/ObjaverseXL_sketchfab
python dataset_toolkits/build_metadata.py ObjaverseXL --output_dir datasets/ObjaverseXL_sketchfab

python dataset_toolkits/render_cond.py ObjaverseXL --output_dir datasets/ObjaverseXL_sketchfab
python dataset_toolkits/build_metadata.py ObjaverseXL --output_dir datasets/ObjaverseXL_sketchfab

