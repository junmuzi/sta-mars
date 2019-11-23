CUDA_VISIBLE_DEVICES=0,1 python train.py --dataset UCF101 --modality RGB --only_RGB --split 2  \
--n_classes 101 --n_finetune_classes 101 --learning_rate 0.0001 --n_workers 32 --checkpoint 1 \
--batch_size 16 --log 1 --sample_duration 64 --n_epochs 3000 \
--model resnext --model_depth 101 --ft_begin_index 4 \
--frame_dir "dataset/UCF101_MARS/" \
--annotation_path "dataset/UCF101_labels" \
--pretrain_path "trained_models/UCF101/PreKin_UCF101_2_RGB_train_batch32_sample112_clip64_nestFalse_damp0.9_weight_decay1e-05_manualseed1_modelresnext101_ftbeginidx4_varLR154.pth" \
--result_path "results-ucf101-rgb-split2/"  2>&1 |tee log/finetuning-rgb-ucf101-split2.log
