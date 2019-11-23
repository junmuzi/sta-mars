# For RGB stream:
python test_single_stream.py --batch_size 1 --n_classes 51 --model resnext --model_depth 101 \
--log 0 --dataset HMDB51 --modality RGB --sample_duration 16 --split 1 --only_RGB  \
--resume_path1 "trained_models/HMDB51/RGB_HMDB51_16f.pth" \
--frame_dir "dataset/HMDB51" \
--annotation_path "dataset/HMDB51_labels" \
--result_path "results/"

# For Flow stream:
python test_single_stream.py --batch_size 1 --n_classes 51 --model resnext --model_depth 101 \
--log 0 --dataset HMDB51 --modality Flow --sample_duration 16 --split 1  \
--resume_path1 "trained_models/HMDB51/Flow_HMDB51_16f.pth" \
--frame_dir "dataset/HMDB51" \
--annotation_path "dataset/HMDB51_labels" \
--result_path "results/"

# For Flow stream:
python test_single_stream_same.py --batch_size 64 --n_classes 51 --model resnext --model_depth 101 \
--log 0 --dataset HMDB51 --modality Flow --sample_duration 64 --split 1  \
--resume_path1 "trained_models/HMDB51/Flow_HMDB51_64f.pth" \
--frame_dir "dataset/HMDB51" \
--annotation_path "dataset/HMDB51_labels" \
--result_path "results/"

# For Flow stream:
python test_single_stream_same.py --batch_size 64 --n_classes 51 --model resnext --model_depth 101 \
--log 0 --dataset HMDB51 --modality Flow --sample_duration 64 --split 1  \
--resume_path1 "trained_models/HMDB51/Flow_HMDB51_64f.pth" \
--frame_dir "dataset/HMDB51_MARS" \
--annotation_path "dataset/HMDB51_labels" \
--result_path "results/"
oPreKin_HMDB51_1_Flow_train_batch32_sample112_clip64_nestFalse_damp0.9_weight_decay1e-05_manualseed1_modelresnext101_ftbeginidx4_varLR1.pth

# For Flow stream:
python test_single_stream_same.py --batch_size 64 --n_classes 51 --model resnext --model_depth 101 \
--log 0 --dataset HMDB51 --modality Flow --sample_duration 64 --split 1  \
--resume_path1 "results-hmdb51-flow-split1/HMDB51/PreKin_HMDB51_1_Flow_train_batch32_sample112_clip64_nestFalse_damp0.9_weight_decay1e-05_manualseed1_modelresnext101_ftbeginidx4_varLR1.pth" \
--frame_dir "dataset/HMDB51_MARS" \
--annotation_path "dataset/HMDB51_labels" \
--result_path "results/"

# For RGB stream:
python test_single_stream.py --batch_size 64 --n_classes 51 --model resnext --model_depth 101 \
--log 0 --dataset HMDB51 --modality RGB --sample_duration 64 --split 1 --only_RGB  \
--resume_path1 "trained_models/HMDB51/RGB_HMDB51_64f.pth" \
--frame_dir "dataset/HMDB51" \
--annotation_path "dataset/HMDB51_labels" \
--result_path "results/"

# For MARS stream:
python test_single_stream.py --batch_size 64 --n_classes 51 --model resnext --model_depth 101 \
--log 0 --dataset HMDB51 --modality RGB --sample_duration 64 --split 1 --only_RGB  \
--resume_path1 "trained_models/HMDB51/MARS_HMDB51_64f.pth" \
--frame_dir "dataset/HMDB51_MARS" \
--annotation_path "dataset/HMDB51_labels" \
--result_path "results/"


MARS_HMDB51_1_train_batch32_sample112_clip64_lr0.0001_nesterovFalse_manualseed1_modelresnext101_ftbeginidx4_layeravgpool_alpha50.0_1.pth

# For MARS stream:
python test_single_stream.py --batch_size 64 --n_classes 51 --model resnext --model_depth 101 \
--log 0 --dataset HMDB51 --modality RGB --sample_duration 64 --split 1 --only_RGB  \
--resume_path1 "results-hmdb51-mars-split1/HMDB51/MARS_HMDB51_1_train_batch32_sample112_clip64_lr0.0001_nesterovFalse_manualseed1_modelresnext101_ftbeginidx4_layeravgpool_alpha50.0_1.pth" \
--frame_dir "dataset/HMDB51_MARS" \
--annotation_path "dataset/HMDB51_labels" \
--result_path "results/"

python test_single_stream.py --batch_size 64 --n_classes 51 --model resnext --model_depth 101 \
--log 0 --dataset HMDB51 --modality RGB --sample_duration 64 --split 1 --only_RGB  \
--resume_path1 "/data1/lijun/sta/codes/MARS_sta/results/HMDB51/MARS_HMDB51_1_train_batch32_sample112_clip64_lr0.0001_nesterovFalse_manualseed1_modelresnext101_ftbeginidx4_layeravgpool_alpha50.0_80.pth" \
--frame_dir "dataset/HMDB51_MARS" \
--annotation_path "dataset/HMDB51_labels" \
--result_path "results/"

# For Flow stream:
python test_single_stream.py --batch_size 64 --n_classes 51 --model resnext --model_depth 101 \
--log 0 --dataset HMDB51 --modality Flow --sample_duration 64 --split 1  \
--resume_path1 "/data1/lijun/sta/codes/MARS/results/HMDB51/PreKin_HMDB51_2_Flow_train_batch32_sample112_clip64_nestFalse_damp0.9_weight_decay1e-05_manualseed1_modelresnext101_ftbeginidx4_varLR200.pth" \
--frame_dir "dataset/HMDB51" \
--annotation_path "dataset/HMDB51_labels" \
--result_path "results/"

# For single stream MARS: 
python test_single_stream.py --batch_size 1 --n_classes 51 --model resnext --model_depth 101 \
--log 0 --dataset HMDB51 --modality RGB --sample_duration 16 --split 1 --only_RGB  \
--resume_path1 "trained_models/HMDB51/MARS_HMDB51_16f.pth" \
--frame_dir "dataset/HMDB51" \
--annotation_path "dataset/HMDB51_labels" \
--result_path "results/"

# For two streams RGB+MARS:
python test_two_stream.py --batch_size 1 --n_classes 51 --model resnext --model_depth 101 \
--log 0 --dataset HMDB51 --modality RGB --sample_duration 16 --split 1 --only_RGB  \
--resume_path1 "trained_models/HMDB51/RGB_HMDB51_16f.pth" \
--resume_path2 "trained_models/HMDB51/MARS_HMDB51_16f.pth" \
--frame_dir "dataset/HMDB51" \
--annotation_path "dataset/HMDB51_labels" \
--result_path "results/"

# For two streams RGB+MARS:
python test_two_stream.py --batch_size 64 --n_classes 51 --model resnext --model_depth 101 \
--log 0 --dataset HMDB51 --modality RGB --sample_duration 64 --split 1 --only_RGB  \
--resume_path1 "trained_models/HMDB51/RGB_HMDB51_64f.pth" \
--resume_path2 "trained_models/HMDB51/MARS_HMDB51_64f.pth" \
--frame_dir "dataset/HMDB51" \
--annotation_path "dataset/HMDB51_labels" \
--result_path "results/"

# For two streams RGB+MARS:
python test_two_stream.py --batch_size 64 --n_classes 101 --model resnext --model_depth 101 \
--log 0 --dataset UCF101 --modality RGB --sample_duration 64 --split 1 --only_RGB  \
--resume_path1 "trained_models/UCF101/RGB_UCF101_64f.pth" \
--resume_path2 "trained_models/UCF101/MARS_UCF101_64f.pth" \
--frame_dir "dataset/UCF101" \
--annotation_path "dataset/UCF101_labels" \
--result_path "results/"

# For two streams RGB+Flow:
python test_two_stream.py --batch_size 1 --n_classes 51 --model resnext --model_depth 101 \
--log 0 --dataset HMDB51 --modality RGB_Flow --sample_duration 16 --split 1 \
--resume_path1 "trained_models/HMDB51/RGB_HMDB51_16f.pth" \
--resume_path2 "trained_models/HMDB51/Flow_HMDB51_16f.pth" \
--frame_dir "dataset/HMDB51/HMDB51_frames/" \
--annotation_path "dataset/HMDB51_labels" \
--result_path "results/"

# For two streams RGB+Flow:
python test_two_stream.py --batch_size 64 --n_classes 51 --model resnext --model_depth 101 \
--log 0 --dataset HMDB51 --modality RGB_Flow --sample_duration 64 --split 1 \
--resume_path1 "trained_models/HMDB51/RGB_HMDB51_64f.pth" \
--resume_path2 "trained_models/HMDB51/Flow_HMDB51_64f.pth" \
--frame_dir "dataset/HMDB51" \
--annotation_path "dataset/HMDB51_labels" \
--result_path "results/"

# For two streams MARS+flow:
python test_two_stream.py --batch_size 64 --n_classes 51 --model resnext --model_depth 101 \
--log 0 --dataset HMDB51 --modality RGB_Flow --sample_duration 64 --split 1 \
--resume_path1 "trained_models/HMDB51/MARS_HMDB51_64f.pth" \
--resume_path2 "trained_models/HMDB51/Flow_HMDB51_64f.pth" \
--frame_dir "dataset/HMDB51" \
--annotation_path "dataset/HMDB51_labels" \
--result_path "results/"

# For two streams MARS+flow:
python test_two_stream.py --batch_size 64 --n_classes 51 --model resnext --model_depth 101 \
--log 0 --dataset HMDB51 --modality RGB_Flow --sample_duration 64 --split 1 \
--resume_path1 "results-hmdb51-mars-split1-based-staflow/HMDB51/MARS_HMDB51_1_train_batch32_sample112_clip64_lr0.0001_nesterovFalse_manualseed1_modelresnext101_ftbeginidx4_layeravgpool_alpha50.0_178.pth" \
--resume_path2 "results-hmdb51-flow-split1/HMDB51/PreKin_HMDB51_1_Flow_train_batch32_sample112_clip64_nestFalse_damp0.9_weight_decay1e-05_manualseed1_modelresnext101_ftbeginidx4_varLR259.pth" \
--frame_dir "dataset/HMDB51_MARS" \
--annotation_path "dataset/HMDB51_labels" \
--result_path "results/"

# For two streams MARS+flow:
python test_two_stream.py --batch_size 64 --n_workers 32 --n_classes 51 --model resnext --model_depth 101 \
--log 0 --dataset HMDB51 --modality RGB_Flow --sample_duration 64 --split 2 \
--resume_path1 "results-hmdb51-mars-split2/HMDB51/MARS_HMDB51_2_train_batch10_sample112_clip64_lr0.0001_nesterovFalse_manualseed1_modelresnext101_ftbeginidx4_layeravgpool_alpha50.0_49.pth" \
--resume_path2 "results-hmdb51-flow-split2/HMDB51/PreKin_HMDB51_2_Flow_train_batch16_sample112_clip64_nestFalse_damp0.9_weight_decay1e-05_manualseed1_modelresnext101_ftbeginidx4_varLR61.pth" \
--frame_dir "dataset/HMDB51_MARS" \
--annotation_path "dataset/HMDB51_labels" \
--result_path "results/"

# For two streams MARS+flow:
python test_two_stream.py --batch_size 64 --n_workers 32 --n_classes 51 --model resnext --model_depth 101 \
--log 0 --dataset HMDB51 --modality RGB_Flow --sample_duration 64 --split 3 \
--resume_path1 "results-hmdb51-mars-split3/HMDB51/MARS_HMDB51_3_train_batch10_sample112_clip64_lr0.0001_nesterovFalse_manualseed1_modelresnext101_ftbeginidx4_layeravgpool_alpha50.0_68.pth" \
--resume_path2 "results-hmdb51-flow-split3/HMDB51/PreKin_HMDB51_3_Flow_train_batch16_sample112_clip64_nestFalse_damp0.9_weight_decay1e-05_manualseed1_modelresnext101_ftbeginidx4_varLR44.pth" \
--frame_dir "dataset/HMDB51_MARS" \
--annotation_path "dataset/HMDB51_labels" \
--result_path "results/"

# For three streams MARS+flow+RGB:
python test_three_stream.py --batch_size 64 --n_workers 32 --n_classes 51 --model resnext --model_depth 101 \
--log 0 --dataset HMDB51 --modality RGB_Flow --sample_duration 64 --split 2 \
--resume_path0 "results-hmdb51-rgb-split2/HMDB51/PreKin_HMDB51_2_RGB_train_batch16_sample112_clip64_nestFalse_damp0.9_weight_decay1e-05_manualseed1_modelresnext101_ftbeginidx4_varLR50.pth" \
--resume_path1 "results-hmdb51-mars-split2/HMDB51/MARS_HMDB51_2_train_batch10_sample112_clip64_lr0.0001_nesterovFalse_manualseed1_modelresnext101_ftbeginidx4_layeravgpool_alpha50.0_49.pth" \
--resume_path2 "results-hmdb51-flow-split2/HMDB51/PreKin_HMDB51_2_Flow_train_batch16_sample112_clip64_nestFalse_damp0.9_weight_decay1e-05_manualseed1_modelresnext101_ftbeginidx4_varLR61.pth" \
--frame_dir "dataset/HMDB51_MARS" \
--annotation_path "dataset/HMDB51_labels" \
--result_path "results/"

# For three streams MARS+flow+RGB:
python test_three_stream.py --batch_size 64 --n_workers 32 --n_classes 51 --model resnext --model_depth 101 \
--log 0 --dataset HMDB51 --modality RGB_Flow --sample_duration 64 --split 3 \
--resume_path0 "results-hmdb51-rgb-split3/HMDB51/PreKin_HMDB51_3_RGB_train_batch16_sample112_clip64_nestFalse_damp0.9_weight_decay1e-05_manualseed1_modelresnext101_ftbeginidx4_varLR50.pth" \
--resume_path1 "results-hmdb51-mars-split3/HMDB51/MARS_HMDB51_3_train_batch10_sample112_clip64_lr0.0001_nesterovFalse_manualseed1_modelresnext101_ftbeginidx4_layeravgpool_alpha50.0_68.pth" \
--resume_path2 "results-hmdb51-flow-split3/HMDB51/PreKin_HMDB51_3_Flow_train_batch16_sample112_clip64_nestFalse_damp0.9_weight_decay1e-05_manualseed1_modelresnext101_ftbeginidx4_varLR44.pth" \
--frame_dir "dataset/HMDB51_MARS" \
--annotation_path "dataset/HMDB51_labels" \
--result_path "results/"
