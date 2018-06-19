getscore<-function(snp,SNVs,score){
  chrs=paste('chr',1:22,sep='')
  snp=snp[as.character(seqnames(snp)) %in% chrs]
  score.get=numeric(length(snp))
  for(chr in chrs){
    id1=as.character(seqnames(snp))==chr
    id2=as.character(seqnames(SNVs))==chr
    if(sum(id1)>0){
      message(chr)
      o=nearest(snp[id1],SNVs[id2])
      score.get[id1]=score[id2][o]
    }
  }
  snp$score=score.get
  snp
}