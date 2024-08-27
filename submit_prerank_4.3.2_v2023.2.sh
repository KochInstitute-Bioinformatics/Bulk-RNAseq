#!/bin/bash
#!/bin/bash
#SBATCH -N 1                      # Number of nodes. You must always set -N 1 unless you receive special instruction from the system admin
#SBATCH -n 1                      # Number of CPUs. Equivalent to the -pe whole_nodes 1 option in SGE
#SBATCH --mail-type=END           # Type of email notification- BEGIN,END,FAIL,ALL. Equivalent to the -m option in SGE
#SBATCH --mail-user=charliew@mit.edu  # Email to which notifications will be sent.

## Hallmark collection

for i in *.rnk
do
sh gsea-cli.sh GSEAPreranked -rnk $i \
-gmx gene_sets/h.all.v2023.2.Hs.symbols.gmt \
-set_min 5 -set_max 250 \
-rpt_label $i.h -plot_top_x 40 -nperm 1000
done

## c2cp - canonical pathways

for i in *.rnk
do
sh gsea-cli.sh GSEAPreranked -rnk $i \
-gmx gene_sets/c2.cp.v2023.2.Hs.symbols.gmt \
-set_min 5 -set_max 250 \
-rpt_label $i.c2cp -plot_top_x 40 -nperm 1000
done


## c2cgp - canonical pathways

for i in *.rnk
do
sh gsea-cli.sh GSEAPreranked -rnk $i \
-gmx gene_sets/c2.cgp.v2023.2.Hs.symbols.gmt \
-set_min 5 -set_max 250 \
-rpt_label $i.c2cgp -plot_top_x 40 -nperm 1000
done

## c5 collections - Gene Ontology

for i in *.rnk
do
sh gsea-cli.sh GSEAPreranked -rnk $i \
-gmx gene_sets/c5.go.cc.v2023.2.Hs.symbols.gmt \
-set_min 5 -set_max 250 \
-rpt_label $i.c5cc -plot_top_x 40 -nperm 1000
done

for i in *.rnk
do
sh gsea-cli.sh GSEAPreranked -rnk $i \
-gmx gene_sets/c5.go.mf.v2023.2.Hs.symbols.gmt \
-set_min 5 -set_max 250 \
-rpt_label $i.c5mf -plot_top_x 40 -nperm 1000
done

for i in *.rnk
do
sh gsea-cli.sh GSEAPreranked -rnk $i \
-gmx gene_sets/c5.go.bp.v2023.2.Hs.symbols.gmt \
-set_min 5 -set_max 250 \
-rpt_label $i.c5bp -plot_top_x 40 -nperm 1000
done
