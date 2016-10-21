#installing Caret
library("caret")
library("klaR")


# define training control
train_control <- trainControl(method="loocv",number=10)

# train model
model <- train(Species~.,data = iris,trControl=train_control,method="knn")

# summarize result
print(model)


#===== for naive bayers
train_control1 <- trainControl(method="loocv",number=15)

# train model

model <- train(Species~.,data = iris,trControl=train_control1,method="nb")

#summarize result
print(model)



#========== method for SVM ==================
train_control2 <- trainControl(method ="loocv",number=15)

mod <- train(Species~., data=iris, method = "svmLinear", trControl = train_control2)  # install kernlab package
print(mod)


# ===========car seats ======================

library("ISLR")
head(Carseats)
train_control3 <- trainControl(method="loocv",number = 20)
model1 <- train(US~.,data=Carseats,method="knn",trControl=train_control3)
print(model1)


# ======= car seats using rpart
train_control4 <- trainControl(method="loocv",number=10)              #
model2 <- train(US~.,data = Carseats,method="rpart",trControl=train_control4)
print(model2)


# ========== iris for rpart- decison tree===========
train_control5 <- trainControl(method="loocv")






# =========== complete processs===========================
#ml bech [ackaage


