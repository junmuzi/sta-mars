# Usage `bash test-finetuning-mars-hmdb51-split1-based-staflow.sh 2(从2代开始测) 0(gpu)`
# For MARS stream:
PTHsize=$((382909066))
for ((i="$1"; i<400;))
do
PTH="results-hmdb51-mars-split2/HMDB51/MARS_HMDB51_2_train_batch10_sample112_clip64_lr0.0001_nesterovFalse_manualseed1_modelresnext101_ftbeginidx4_layeravgpool_alpha50.0_$i.pth"
if [ ! -f $PTH ];then
    echo "$i not exist, wait..."
    sleep 30
else
    filesize=`ls -l $PTH | awk '{ print $5 }'`
    if [ $(($PTHsize+500)) -gt $filesize ];then
        echo "$i runing..."
        CUDA_VISIBLE_DEVICES=$2 python test_single_stream.py --batch_size 64 --n_classes 51 --model resnext --model_depth 101 \
        --log 0 --dataset HMDB51 --modality RGB --sample_duration 64 --split 2 --only_RGB  \
        --resume_path1 $PTH \
        --frame_dir "dataset/HMDB51_MARS" \
        --annotation_path "dataset/HMDB51_labels" \
        --result_path "results/" >> test-finetuning-mars-hmdb51-split2_from-$1.log
        i=$(($i+$3))
    else
        echo "$i in generating, wait..."
        sleep 15
    fi
fi
done
