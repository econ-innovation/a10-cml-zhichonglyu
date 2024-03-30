f="./assignment_cml/pubnr_cn.txt"
d="./cml"
n=1
while IFS= read -r l; do
    d1=$(printf "%04d" $(( (n-1) / 10000 )))
    d2=$(printf "%02d" $(( ((n-1) % 10000) / 100 )))
    td="${d}/${d1}/${d2}"
    mkdir -p "${td}"
    echo "$l" > "${td}/${l}.txt"
    ((n++))
done < "$f"
