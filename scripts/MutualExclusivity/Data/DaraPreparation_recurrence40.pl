#perl

open file, "cosmic_somatic_AA_sample_WG_volgelstein_v2.txt";

my %Site;
my %SiteSample;
my %SiteGene;
my %SiteSampleGene;
my %SiteGeneSample;

while (my $line = <file>){
	my @a = split /\t/, $line;
	my $site = $a[2];
	my $sample = $a[1];
	my $gene = $a[0];
	
	$Site{$site} = 1;
	$SiteSample{$site}{$sample} = 1;
	$SiteGene{$site}{$gene} = 1;
	$SiteSampleGene{$site}{$sample}{$gene} = 1;
	$SiteGeneSample{$site}{$gene}{$sample} = 1;
	
	}




foreach $site(keys %Site){
	my $fo = "Cosmic_WG_Somatic_Sample_Gene_".$site."_Recurrence40";
	open output, ">".$fo;
	print output "Gene";
	foreach $sample( sort {$a cmp $b} keys  %{$SiteSample{$site}}){
		print output "\t".$sample;		
		}
		print output "\n";
	
	foreach $gene (sort {$a cmp $b} keys %{$SiteGene{$site}} ){
		if ( scalar(keys %{$SiteGeneSample{$site}{$gene}}) >= 40 ){
		 print output $gene;
		 foreach $sample( sort {$a cmp $b} keys  %{$SiteSample{$site}}){
		   print output "\t";
		   if ( $SiteSampleGene{$site}{$sample}{$gene} == 1 ){
		  	  print output "1"; 
		  	 }
		   else {
		  	 print output "0";
		  	}
	     }
	     print output "\n";
		  }
	}
		
		 
	close output;
		
	}



