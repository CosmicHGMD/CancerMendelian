#!/usr/bin/perl


open control, "2K_SNPs_Exome.txt";

my $no = 153593;

my %control;
my $cur=0;
while (my $line = <control>) {
    $line =~ s/\s+$//;
    my @a = split /\t/, $line;
    $control{$cur++} = $a[0].$a[1].$a[2].$a[3];     
    if ($cur % 1000000 == 0){
    	  print $cur."\n";
    	}
}
print "\n";
my $ctrsum = $cur;

open cosmic, "cosmicv73.txt";
my %cosmic;
my $cosno = 0;
while (my $line = <cosmic>) {    
    $line =~ s/\s+$//g;
    my @a = split /\t/, $line; 
    $cosmic{$a[0].$a[1].$a[3].$a[4]} = 1;    #chr.start.ref.end
}

open output, ">Result_control2K_cosmic_1000";
print output "NO\tOverlapping\n";
for (my $k=0; $k<1000; $k++){
    
    my %ctr;
    for ($ctrno=0; $ctrno<$no; $ctrno++){
        my $ctrcur = int(rand($ctrsum));
        if ( $ctr{$control{$ctrcur}} == 1 ) {
             $ctrno--; 
            }
        else {
            $ctr{$control{$ctrcur}} = 1;            
        }        
    }
    my $overlapping=0;
    foreach $key(%ctr){
    	if ($cosmic{$key} == 1){
    		$overlapping++;    		 
    		#print $key."\n";  
    		}    	
    }
    print output  $k."\t".$overlapping."\n";        
    print $k."\t".$overlapping."\n";
}




