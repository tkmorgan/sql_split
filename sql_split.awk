BEGIN{ n = 1; fn = "part" sprintf("%04d", n) ".sql"; file_length = 0;min_file_length = 200000000; }
{
   print > fn
   
   y=-1
   

   if (substr($0,(length($0)),1) == ";") {
   	   file_length+=length($0)

   	   if (file_length > min_file_length) {
	       close (fn)
	       n++
	       fn = "part" sprintf("%04d", n) ".sql"
	       file_length = 0
   	   }
   }
}