CUDA_VISIBLE_DEVICES=0,1 python train.py --dataset UCF101 --modality Flow --split 3  \
--n_classes 101 --n_finetune_classes 101 --learning_rate 0.0001 --n_workers 32 --checkpoint 1 \
--batch_size 16 --log 1 --sample_duration 64 --n_epochs 3000 \
--model resnext --model_depth 101 --ft_begin_index 4 \
--frame_dir "dataset/UCF101_MARS/" \
--annotation_path "dataset/UCF101_labels" \
--pretrain_path "/mnt/datasets/lijun/MARS_sta-3-238/trained_models/UCF101/PreKin_UCF101_3_Flow_train_batch32_sample112_clip64_nestFalse_damp0.9_weight_decay1e-05_manualseed1_modelresnext101_ftbeginidx4_varLR250.pth" \
--result_path "results-ucf101-flow-split3/"  2>&1 |tee log/finetuning-flow-ucf101-split3.log
