CUDA_VISIBLE_DEVICES=0,1 python train.py --dataset UCF101 --modality Flow --split 1  \
--n_classes 101 --n_finetune_classes 101 --learning_rate 0.0001 --n_workers 32 --checkpoint 1 \
--batch_size 32 --log 1 --sample_duration 64 --n_epochs 3000 \
--model resnext --model_depth 101 --ft_begin_index 4 \
--frame_dir "dataset/UCF101_MARS/" \
--annotation_path "dataset/UCF101_labels" \
--pretrain_path "trained_models/UCF101/Flow_UCF101_64f.pth" \
--result_path "results-ucf101-flow-split1/"  2>&1 |tee log/finetuning-flow-ucf101-split1.log
