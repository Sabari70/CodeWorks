#CodeWorks
use Spreadsheet::Read;
    my $worksheet = ReadData ("samplefile.xls");
    my $workbook = $worksheet->[1];     #excel sheet no

    #row count....
    my $max_rows = $workbook->{'maxrow'};
    #column count...
    my $max_cols = $workbook->{'maxcol'};

    my %hash ;
    for my $row_num (1..($max_rows))
    {
        if(exists $workbook->{'cell'}[1][$row_num])
        {
              #insert values in the hash 
              my $id = $workbook->{'cell'}[1][$row_num];
            # my $val1 = $workbook->{'cell'}[2][$row_num];
               push (@{$hash{$id}} , $val1 , $val2 , $val3);
        }
   }
   #hash Reading
   foreach my $id (keys %hash)
   {
       my @arr = @{$hash{$id}};
       print "$id\t@arr\n";
       }
     #After delimiting using / 
    foreach my $id (keys %hash)
    {
       my @values = split('/',$id);
       print "@values\t\n";
       } 
   
