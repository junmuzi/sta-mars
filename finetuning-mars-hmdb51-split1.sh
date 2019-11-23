CUDA_VISIBLE_DEVICES=0,1,2,3 python MARS_train.py --dataset HMDB51 --modality RGB_Flow --split 1  \
--n_classes 51 --n_finetune_classes 51 --learning_rate 0.0001 --n_workers 32 --checkpoint 2 \
--batch_size 32 --log 1 --sample_duration 64 --n_epochs 3000 \
--model resnext --model_depth 101 --ft_begin_index 4 \
--output_layers 'avgpool' --MARS_alpha 50 \
--frame_dir "dataset/HMDB51_MARS/" \
--annotation_path "dataset/HMDB51_labels" \
--pretrain_path "trained_models/HMDB51/MARS_HMDB51_64f.pth" \
--resume_path1 "results-hmdb51-flow-split1/HMDB51/PreKin_HMDB51_1_Flow_train_batch32_sample112_clip64_nestFalse_damp0.9_weight_decay1e-05_manualseed1_modelresnext101_ftbeginidx4_varLR259.pth" \
--result_path "results-hmdb51-mars-split1-based-staflow/"  2>&1|tee log/finetuning-mars-hmdb51-split1-based-staflow.log
