# CancerMendelian

Identify cancer driver genes through shared Mendelian disease pathogenic variants and cancer somatic mutations

Mendelian disease germline pathogenic variants impact functions of key proteins involved in the developmental process and consequently cause inheritable diseases. So we bring about such hypothesis: If the same germline pathogenic variants occur as somatic mutations in cancer, these mutations would also alter protein functions and may play a role in tumor initiation and progression.

cancer genes can be classified into two types: Oncogene and Tumor suppressor. Oncogenes are often mutated recurrently at certain positions (referred as hotspots). Tumor suppressors usually are mutated at many positions across the gene sequences.

So we firstly identified overlapping mutations between cancer somatic mutations and Mendelian disease pathogenic mutations. If there is a highly recurrent overlapping mutation within a gene, then potentially this gene can be oncogene. If there is multiple overlapping mutations within a gene, then potentially this gene can be tumor suppressor.

Cancer somatic mutations are from COSMIC Version 73,  Mendelian disease pathogenic mutations are from HGMD profession 2015 version. We also adopted two controls: 1000 Genome Phase3 and ExAC. Gene exonic annotation information is from RefSeq. 

COSMIC V73 can be downloaded from sftp-cancer.sanger.ac.uk using GUI client WinSCP under protocol sftp and port 22.  HGMD Professional can be accessed from https://www.qiagenbioinformatics.com/products/human-gene-mutation-database/ with an authorized license.  1000 Genome Phase3 can be downloaded from ftp://ftp.1000genomes.ebi.ac.uk/vol1/ftp/release/20130502/.  ExAC database can be downloaded from ftp://ftp.broadinstitute.org/pub/ExAC_release/. All RefSeq Exons were downloaded from UCSC table refGene through UCSC Table Browser (clade: Mammal, genome: Human, assembly: Feb.2009 (GRCH37/hg19), group: Genes and Gene Predictions, track: RefSeq Genes, Table: refGene).  Cancer Gene Census dataset was downloaded from http://cancer.sanger.ac.uk/census/. Cancer gene annotation by Vogelstein can be gotten from  http://science.sciencemag.org/content/339/6127/1546.full. All the data except HGMD already were loaded to databases folder. 

The main scripts can be found in scripts folder.

If you have any questions, please contace Meng, mengma2@gmail.com, meng.ma@mssm.edu


