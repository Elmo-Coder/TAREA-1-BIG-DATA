#!/usr/bin/awk -f BEGIN {for (i = 0; i < 4^k; i++) {kmer_frec[i] = 0}} /^>/ {next} {for (i = 1; i <= length($0) - k + 1; i++) {kmer = substr($0, i, k) kmer_frec[kmer]++}} END {for (i in kmer_frec) {print i, kmer_frec[i]}}