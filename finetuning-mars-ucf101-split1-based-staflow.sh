CUDA_VISIBLE_DEVICES=0,1,2,3 python MARS_train.py --dataset UCF101 --modality RGB_Flow --split 1  \
--n_classes 101 --n_finetune_classes 101 --learning_rate 0.0001 --n_workers 32 --checkpoint 1 \
--batch_size 32 --log 1 --sample_duration 64 --n_epochs 3000 \
--model resnext --model_depth 101 --ft_begin_index 4 \
--output_layers 'avgpool' --MARS_alpha 50 \
--frame_dir "dataset/UCF101_MARS/" \
--annotation_path "dataset/UCF101_labels" \
--pretrain_path "trained_models/UCF101/MARS_UCF101_64f.pth" \
--resume_path1 "results-ucf101-flow-split1/UCF101/PreKin_UCF101_1_Flow_train_batch32_sample112_clip64_nestFalse_damp0.9_weight_decay1e-05_manualseed1_modelresnext101_ftbeginidx4_varLR47.pth" \
--result_path "results-mars-ucf101-split1-based-staflow/"  2>&1|tee log/finetuning-mars-ucf101-split1-based-staflow.log
