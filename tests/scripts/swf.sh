#!/bin/sh
test_begin "swf"
 if [ $test_skip  = 1 ] ; then
  return
 fi

do_test "$MP4BOX -mp4 $MEDIA_DIR/swf/cuisine.swf -out $TEMP_DIR/cuisine.mp4" "mp4box-import"

do_playback_test "$MEDIA_DIR/swf/cuisine.swf" "mp4client-play"

test_end
