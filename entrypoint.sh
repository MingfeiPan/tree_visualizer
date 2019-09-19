#! /bin/sh
set -e

nums=$1
echo $nums
str=$(./tree $nums)

cp template.dot input.dot
echo $str >> ./input.dot
echo } >> input.dot

dot -Tpdf input.dot -o /home/tree.pdf
rm input.dot
