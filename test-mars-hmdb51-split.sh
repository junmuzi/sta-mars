# For MARS stream:
PTHsize=$((382909066))
for ((i="$1"; i<400;))
do
PTH="results-hmdb51-mars-split1/HMDB51/MARS_HMDB51_1_train_batch32_sample112_clip64_lr0.0001_nesterovFalse_manualseed1_modelresnext101_ftbeginidx4_layeravgpool_alpha50.0_$i.pth"
if [ ! -f $PTH ];then
    echo "$i not exist, wait..."
    sleep 30
else
    filesize=`ls -l $PTH | awk '{ print $5 }'`
    if [ $PTHsize -eq $filesize ];then
        python test_single_stream.py --batch_size 64 --n_classes 51 --model resnext --model_depth 101 \
        --log 0 --dataset HMDB51 --modality RGB --sample_duration 64 --split 1 --only_RGB  \
        --resume_path1 $PTH \
        --frame_dir "dataset/HMDB51_MARS" \
        --annotation_path "dataset/HMDB51_labels" \
        --result_path "results/" >> test-mars-hmdb51-split-from_$1.log
        i=$(($i+1))
    else
        echo "$i in generating, wait..."
        sleep 10
    fi
fi
done
