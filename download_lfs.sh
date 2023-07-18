FILE=https://github.com/Jaitoh/mnle-for-ddms/blob/main/data/ddm_training_and_test_data_10mio.p
curl -L -o pointerfile ${FILE}
oid=$(awk '/oid sha256:/ {print $2}' pointerfile)
echo $oid
download_url="https://media.githubusercontent.com/media/Jaitoh/mnle-for-ddms/main/data/ddm_training_and_test_data_10mio.p"
echo $download_url
curl -L -o ddm_training_and_test_data_10mio.p $download_url
