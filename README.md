# TIVAN
Tissue-specific cis-eQTL single nucleotide variant Annotation and prediction

## Cite
Chen L, Wang Y, Yao B, Mitra A, Wang X, Qin X (2018). TIVAN: Tissue-specific cis-eQTL single nucleotide variant annotation and prediction. Bioinformatics, bty872

## Author
Li Chen

## Maintainer
Li Chen <li.chen@auburn.edu>

## Description
Here, we present TIVAN (TIssue-specific Variant Annotation and prediction) to predict cis-eQTL SNVs by considering tissue-specificity. TIVAN is trained based on a comprehensive collection of features including genome-wide genomic and epigenomic profiling data. TIVAN has been shown to accurately discriminate cis-eQTL SNVs from non-eQTL SNVs and perform favorably to other methods. This site provides the pre-computed scores for hg19 and software toolkit to obtain the scores for queried variants.

## Summary statistics for 44 eQTL SNVs in GTEx

|Tissue                                |Tissue.class  | eQTL.SNV|
|:-------------------------------------|:-------------|--------:|
|Adipose_Subcutaneous                  |Adipose       |   312097|
|Adipose_Visceral_Omentum              |Adipose       |   148620|
|Adrenal_Gland                         |Adrenal Gland |   102070|
|Artery_Aorta                          |Artery        |   213995|
|Artery_Coronary                       |Artery        |    76036|
|Artery_Tibial                         |Artery        |   297674|
|Brain_Anterior_cingulate_cortex_BA24  |Brain         |    36778|
|Brain_Caudate_basal_ganglia           |Brain         |    74976|
|Brain_Cerebellar_Hemisphere           |Brain         |    93993|
|Brain_Cerebellum                      |Brain         |   123205|
|Brain_Cortex                          |Brain         |    74323|
|Brain_Frontal_Cortex_BA9              |Brain         |    62226|
|Brain_Hippocampus                     |Brain         |    33820|
|Brain_Hypothalamus                    |Brain         |    37799|
|Brain_Nucleus_accumbens_basal_ganglia |Brain         |    62692|
|Brain_Putamen_basal_ganglia           |Brain         |    47004|
|Breast_Mammary_Tissue                 |Breast        |   145913|
|Cells_EBV-transformed_lymphocytes     |Lymphocytes   |    95401|
|Cells_Transformed_fibroblasts         |Fibroblasts   |   315127|
|Colon_Sigmoid                         |Colon         |    97000|
|Colon_Transverse                      |Colon         |   150136|
|Esophagus_Gastroesophageal_Junction   |Esophagus     |    93865|
|Esophagus_Mucosa                      |Esophagus     |   271541|
|Esophagus_Muscularis                  |Esophagus     |   248781|
|Heart_Atrial_Appendage                |Heart         |   132443|
|Heart_Left_Ventricle                  |Heart         |   154101|
|Liver                                 |Liver         |    49395|
|Lung                                  |Lung          |   265588|
|Muscle_Skeletal                       |Muscle        |   277941|
|Nerve_Tibial                          |Nerve         |   352489|
|Ovary                                 |Ovary         |    47446|
|Pancreas                              |Pancreas      |   137961|
|Pituitary                             |Pituitary     |    65542|
|Prostate                              |Prostate      |    45189|
|Skin_Not_Sun_Exposed_Suprapubic       |Skin          |   184157|
|Skin_Sun_Exposed_Lower_leg            |Skin          |   323542|
|Small_Intestine_Terminal_Ileum        |Intestine     |    36771|
|Spleen                                |Spleen        |    76520|
|Stomach                               |Stomach       |   119532|
|Testis                                |Testis        |   312917|
|Thyroid                               |Thyroid       |   358276|
|Uterus                                |Uterus        |    26619|
|Vagina                                |Vagina        |    28397|
|Whole_Blood                           |Blood         |   256421|

## Download hg19 SNVs, all cis-eQTLs in the training set and pre-computed scores of 44 tissues for hg19 SNVs 

[Download Here](https://drive.google.com/open?id=1MTnSKb_HDrMrNAqDsVBMORj5ZO3espga)


## System requirement
To successfully run the example below, we strongly recommend at least 4GB memory for the PC/laptop/Work station. The example has been successfully performed on a MacBook laptop with a 1.7 GHz processor and 8 GB memory.

## Installation, GenomicRanges R Bioconductor package
```r
source("https://bioconductor.org/biocLite.R")
biocLite("GenomicRanges")
```

## An example to obtain score for a list of eQTL SNVs from Adipose_Subcutaneous

Adipose_Subcutaneous.eQTL.rda could be downloaded from [Here](https://drive.google.com/open?id=1S0jgTGOK-8DCPsiRJ1fLHpDdSXpYCvbi)

Adipose_Subcutaneous.score.rda could be downloaded [Here](https://drive.google.com/open?id=1RyBG4KtqAL0QH_odM0UtbpHZBGLv5bxr)

hg19.SNVs.rda could be downloaded [Here](https://drive.google.com/open?id=1GWqDb_Sxq1FMPdFTwKoql5Vfsl4UjIKO)

getscore.R could be downloaded [Here](https://github.com/lichen-lab/TIVAN/blob/master/getscore.R)

```r
# hg19.SNVs.rda contains an object hg19.SNVs, which SNVs for hg19
# Adipose_Subcutaneous.score.rda contains an object score, which is pre-computed scores for hg19 SNVs in Adipose_Subcutaneous
# Adipose_Subcutaneous.eQTL.rda contains an object snp1, which are eQTL SNVs for Adipose_Subcutaneous

library("GenomicRanges")
load('hg19.SNVs.rda')
load('Adipose_Subcutaneous.score.rda')
load('Adipose_Subcutaneous.eQTL.rda')
source('getscore.R')
eQTLs.score=getscore(snp1,hg19.SNVs,score)
head(eQTLs.score)
```




