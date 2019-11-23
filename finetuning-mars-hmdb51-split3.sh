CUDA_VISIBLE_DEVICES=0,1 python MARS_train.py --dataset HMDB51 --modality RGB_Flow --split 3  \
--n_classes 51 --n_finetune_classes 51 --learning_rate 0.0001 --n_workers 32 --checkpoint 1 \
--batch_size 10 --log 1 --sample_duration 64 --n_epochs 3000 \
--model resnext --model_depth 101 --ft_begin_index 4 \
--output_layers 'avgpool' --MARS_alpha 50 \
--frame_dir "dataset/HMDB51_MARS/" \
--annotation_path "dataset/HMDB51_labels" \
--pretrain_path "/mnt/datasets/lijun/MARS_sta-3-238/trained_models/HMDB51/MARS_HMDB51_3_train_batch16_sample112_clip64_lr0.001_nesterovFalse_manualseed1_modelresnext101_ftbeginidx4_layeravgpool_alpha50.0_72.pth" \
--resume_path1 "/mnt/datasets/lijun/MARS_sta-3-238/results-hmdb51-flow-split3/HMDB51/PreKin_HMDB51_3_Flow_train_batch16_sample112_clip64_nestFalse_damp0.9_weight_decay1e-05_manualseed1_modelresnext101_ftbeginidx4_varLR44.pth" \
--result_path "results-hmdb51-mars-split3/"  2>&1|tee log/finetuning-mars-hmdb51-split3.log
