library(stringr)

# Process data
Raw <- fread('https://archive.ics.uci.edu/ml/machine-learning-databases/spambase/spambase.data')
y <- Raw$V58
X <- Raw[,1:57] %>% as.matrix

# Process names
Raw <- readLines('https://archive.ics.uci.edu/ml/machine-learning-databases/spambase/spambase.names')
Names <- Raw[Raw != "" & str_sub(Raw, 1, 1) != "|"] %>%
  str_split_fixed(':', 2) %>%
  extract(, 1)
colnames(X) <- Names[-1]

# Train/test split
set.seed(1)
split <- sample(rep(c('Train', 'Test'), c(3000, length(y) - 3000)))
Xtrain <- X[split=='Train',]
ytrain <- y[split=='Train']
Xtest <- X[split=='Test',]
ytest <- y[split=='Test']

# Export
saveRDS(list(X=Xtrain, y=ytrain, Xtest=Xtest, ytest=ytest), 'spam.rds')
