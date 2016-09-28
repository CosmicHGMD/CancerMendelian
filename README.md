# CancerMendelian

Identify cancer driver genes through shared Mendelian disease pathogenic variants and cancer somatic mutations

Mendelian disease germline pathogenic variants impact functions of key proteins involved in the developmental process and consequently cause inheritable diseases. So we bring about such hypothesis: If the same germline pathogenic variants occur as somatic mutations in cancer, these mutations would also alter protein functions and may play a role in tumor initiation and progression.

cancer genes can be classified into two types: Oncogene and Tumor suppressor. Oncogenes are often mutated recurrently at certain positions (referred as hotspots). Tumor suppressors usually are mutated at many positions across the gene sequences.

So we identified overlapping mutations between cancer somatic mutations and Mendelian disease pathogenic mutations. If there is a highly recurrent overlapping mutation within a gene, then potentially this gene can be oncogene. If there is multiple overlapping mutations within a gene, then potentially this gene can be tumor suppressor.

Cancer somatic mutations are from COSMIC Version 73,  Mendelian disease pathogenic mutations are from HGMD profession 2015 version. We also adopted two controls: 1000 Genome Phase3 and ExAC. Gene annotation information is from RefSeq. 


