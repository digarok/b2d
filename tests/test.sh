B2D="../b2d"
echo " --- Super High-Tech Test Suite v0.1234zaxxon ---"

#####################################
# LORES
echo "LORES TEST START"
echo " - RUN: '$B2D black-40x48.bmp L N'"
$B2D black-40x48.bmp L N
echo " - RUN: '$B2D white-40x48.bmp L N'"
$B2D white-40x48.bmp L N

diff BLACK-40X48.SLO BLACK.LORES
if [ $? -ne 0 ] ; then
  echo "LORES FAIL!"
  exit 1
fi

diff WHITE-40X48.SLO WHITE.LORES
if [ $? -ne 0 ] ; then
  echo "LORES FAIL!"
  exit 1
fi

echo "LORES TEST PASSED"

#####################################
# DOUBLE LORES
echo "DOUBLE LORES TEST START"
echo " - RUN: '$B2D gradient-80x48.bmp DL N'"
$B2D gradient-80x48.bmp DL N

diff GRADIENT-80X48.DLO GRADIENT.DLORES
if [ $? -ne 0 ] ; then
  echo "DOUBLE LORES FAIL!"
  exit 1
fi

echo "DOUBLE LORES TEST PASSED"
