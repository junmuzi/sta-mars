 python train.py --dataset HMDB51 --modality RGB --split 1 --only_RGB \
--n_classes 400 --n_finetune_classes 51 \
--batch_size 32 --log 1 --sample_duration 16 \
--model resnext_fa --model_depth 101 --ft_begin_index 4 \
--frame_dir "dataset/HMDB51" \
--annotation_path "dataset/HMDB51_labels" \
--pretrain_path "trained_models/Kinetics/RGB_Kinetics_16f.pth" \
--result_path "results/"
