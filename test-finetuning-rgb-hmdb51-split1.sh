# Usage `bash test-finetuning-mars-hmdb51-split1-based-staflow.sh 2(从2代开始测) 0(gpu)`
# For MARS stream:
PTHsize=$((382909066))
for ((i="$1"; i<401;))
do
PTH="results-hmdb51-rgb-split1/HMDB51/PreKin_HMDB51_1_RGB_train_batch16_sample112_clip64_nestFalse_damp0.9_weight_decay1e-05_manualseed1_modelresnext101_ftbeginidx4_varLR$i.pth"
if [ ! -f $PTH ];then
    echo "$i not exist, wait..."
    sleep 30
else
    filesize=`ls -l $PTH | awk '{ print $5 }'`
    if [ $(($PTHsize+500)) -gt $filesize ];then
        echo "$i runing..."
        CUDA_VISIBLE_DEVICES=$2 python test_single_stream.py --batch_size 64 --n_classes 51 --model resnext --model_depth 101 \
        --log 0 --dataset HMDB51 --modality RGB --sample_duration 64 --split 1 --only_RGB  \
        --resume_path1 $PTH \
        --frame_dir "dataset/HMDB51_MARS" \
        --annotation_path "dataset/HMDB51_labels" \
        --result_path "results/" >> test-finetuning-rgb-hmdb51-split1_from-$1.log
        i=$(($i+$3))
    else
        echo "$i in generating, wait..."
        sleep 15
    fi
fi
done
