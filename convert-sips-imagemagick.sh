# commands for processing tax docs
mogrify -resize 40% *.jpeg
convert 1099-DIV-Merrill-2021_a.jpeg 1099-DIV-Merrill-2021_b.jpeg 1099-DIV-Merrill-2021_c.jpeg 1099-DIV-Merrill-2021_d.jpeg 1099-DIV-Merrill-2021_e.jpeg 1099-DIV-Merrill-2021_f.jpeg 1099-DIV-Merrill-2021_g.jpeg 1099-DIV-Merrill-2021.pdf

# convert .heic and resize
sips -s format jpeg IMG_6877.HEIC --out 99tahoe-interior1.jpg
for f in *.HEIC; do fileNoExt="${f%.*}"; echo "$f $fileNoExt"; sips -s format jpeg $f --out $fileNoExt.jpg; read -p "ok?" -n1 -s; done
# resize
for f in *.jpg; do du -h $f; read -p "ok?" -n1 -s; echo ""; mogrify -resize 40% $f; done
## to do: prompt Y/N, and only resize if Y
