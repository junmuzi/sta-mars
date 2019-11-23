CUDA_VISIBLE_DEVICES=0,1 python train.py --dataset HMDB51 --modality RGB --only_RGB --split 3  \
--n_classes 51 --n_finetune_classes 51 --learning_rate 0.0001 --n_workers 32 --checkpoint 1 \
--batch_size 32 --log 1 --sample_duration 64 --n_epochs 3000 \
--model resnext --model_depth 101 --ft_begin_index 4 \
--frame_dir "dataset/HMDB51_MARS/" \
--annotation_path "dataset/HMDB51_labels" \
--pretrain_path "/mnt/datasets/lijun/MARS-238/results-rgb-split3/HMDB51/PreKin_HMDB51_3_RGB_train_batch16_sample112_clip64_nestFalse_damp0.9_weight_decay1e-05_manualseed1_modelresnext101_ftbeginidx4_varLR224.pth" \
--result_path "results-hmdb51-rgb-split3-rerun/"  2>&1 |tee log/finetuning-rgb-hmdb51-split3-rerun.log
