##Input files
test.body.acc.x<-read.table("E:/coursera/Getting and cleaning data/final project/UCI HAR Dataset/test/Inertial Signals/body_acc_x_test.txt")

test.body.acc.y<-read.table("E:/coursera/Getting and cleaning data/final project/UCI HAR Dataset/test/Inertial Signals/body_acc_y_test.txt")

test.body.acc.z<-read.table("E:/coursera/Getting and cleaning data/final project/UCI HAR Dataset/test/Inertial Signals/body_acc_z_test.txt")

test.body.gyro.x<-read.table("E:/coursera/Getting and cleaning data/final project/UCI HAR Dataset/test/Inertial Signals/body_gyro_x_test.txt")

test.body.gyro.y<-read.table("E:/coursera/Getting and cleaning data/final project/UCI HAR Dataset/test/Inertial Signals/body_gyro_y_test.txt")

test.body.gyro.z<-read.table("E:/coursera/Getting and cleaning data/final project/UCI HAR Dataset/test/Inertial Signals/body_gyro_z_test.txt")

test.total.acc.x<-read.table("E:/coursera/Getting and cleaning data/final project/UCI HAR Dataset/test/Inertial Signals/total_acc_x_test.txt")

test.total.acc.y<-read.table("E:/coursera/Getting and cleaning data/final project/UCI HAR Dataset/test/Inertial Signals/total_acc_y_test.txt")

test.total.acc.z<-read.table("E:/coursera/Getting and cleaning data/final project/UCI HAR Dataset/test/Inertial Signals/total_acc_z_test.txt")

train.body.acc.x<-read.table("E:/coursera/Getting and cleaning data/final project/UCI HAR Dataset/train/Inertial Signals/body_acc_x_train.txt")

train.body.acc.y<-read.table("E:/coursera/Getting and cleaning data/final project/UCI HAR Dataset/train/Inertial Signals/body_acc_y_train.txt")

train.body.acc.z<-read.table("E:/coursera/Getting and cleaning data/final project/UCI HAR Dataset/train/Inertial Signals/body_acc_z_train.txt")

train.body.gyro.x<-read.table("E:/coursera/Getting and cleaning data/final project/UCI HAR Dataset/train/Inertial Signals/body_gyro_x_train.txt")

train.body.gyro.y<-read.table("E:/coursera/Getting and cleaning data/final project/UCI HAR Dataset/train/Inertial Signals/body_gyro_y_train.txt")

train.body.gyro.z<-read.table("E:/coursera/Getting and cleaning data/final project/UCI HAR Dataset/train/Inertial Signals/body_gyro_z_train.txt")

train.total.acc.x<-read.table("E:/coursera/Getting and cleaning data/final project/UCI HAR Dataset/train/Inertial Signals/total_acc_x_train.txt")

train.total.acc.y<-read.table("E:/coursera/Getting and cleaning data/final project/UCI HAR Dataset/train/Inertial Signals/total_acc_y_train.txt")

train.total.acc.z<-read.table("E:/coursera/Getting and cleaning data/final project/UCI HAR Dataset/train/Inertial Signals/total_acc_z_train.txt")


test.subject.id<-read.table("E:/coursera/Getting and cleaning data/final project/UCI HAR Dataset/test/subject_test.txt")

train.subject.id<-read.table("E:/coursera/Getting and cleaning data/final project/UCI HAR Dataset/train/subject_train.txt")

test.result<-read.table("E:/coursera/Getting and cleaning data/final project/UCI HAR Dataset/test/X_test.txt")

train.result<-read.table("E:/coursera/Getting and cleaning data/final project/UCI HAR Dataset/train/X_train.txt")

test.label<-read.table("E:/coursera/Getting and cleaning data/final project/UCI HAR Dataset/test/Y_test.txt")

train.label<-read.table("E:/coursera/Getting and cleaning data/final project/UCI HAR Dataset/train/Y_train.txt")



## Merge the train and test datasets
### Merge the datasets in the Inertia datsets with the calculated mean and sds. 
I.body.acc.x.mean<-apply(rbind(test.body.acc.x,train.body.acc.x),1,mean,na.rm=T)
I.body.acc.x.std<-apply(rbind(test.body.acc.x,train.body.acc.x),1,sd,na.rm=T)

I.body.acc.y.mean<-apply(rbind(test.body.acc.y,train.body.acc.y),1,mean,na.rm=T)
I.body.acc.y.std<-apply(rbind(test.body.acc.y,train.body.acc.y),1,sd,na.rm=T)

I.body.acc.z.mean<-apply(rbind(test.body.acc.z,train.body.acc.z),1,mean,na.rm=T)
I.body.acc.z.std<-apply(rbind(test.body.acc.z,train.body.acc.z),1,sd,na.rm=T)

I.body.gyro.x.mean<-apply(rbind(test.body.gyro.x,train.body.gyro.x),1,mean,na.rm=T)
I.body.gyro.x.std<-apply(rbind(test.body.gyro.x,train.body.gyro.x),1,sd,na.rm=T)

I.body.gyro.y.mean<-apply(rbind(test.body.gyro.y,train.body.gyro.y),1,mean,na.rm=T)
I.body.gyro.y.std<-apply(rbind(test.body.gyro.y,train.body.gyro.y),1,sd,na.rm=T)

I.body.gyro.z.mean<-apply(rbind(test.body.gyro.z,train.body.gyro.z),1,mean,na.rm=T)
I.body.gyro.z.std<-apply(rbind(test.body.gyro.z,train.body.gyro.z),1,sd,na.rm=T)

I.total.acc.x.mean<-apply(rbind(test.total.acc.x,train.total.acc.x),1,mean,na.rm=T)
I.total.acc.x.std<-apply(rbind(test.total.acc.x,train.total.acc.x),1,sd,na.rm=T)

I.total.acc.y.mean<-apply(rbind(test.total.acc.y,train.total.acc.y),1,mean,na.rm=T)
I.total.acc.y.std<-apply(rbind(test.total.acc.y,train.total.acc.y),1,sd,na.rm=T)

I.total.acc.z.mean<-apply(rbind(test.total.acc.z,train.total.acc.z),1,mean,na.rm=T)
I.total.acc.z.std<-apply(rbind(test.total.acc.z,train.total.acc.z),1,sd,na.rm=T)

###Merge the subject.id,X datasets for the training and testing groups
subject.id<-rbind(test.subject.id,train.subject.id)
result<-rbind(test.result,train.result)
label<-rbind(test.label,train.label)
colnames(subject.id)<-"Subject.ID"
colnames(label)<-"ActivityLabel"
resultlabel<-read.table("E:/coursera/Getting and cleaning data/final project/UCI HAR Dataset/features.txt")
colnames(result)<-as.vector(resultlabel$V2)
varlist<-as.vector(resultlabel$V2)

## Only extract the mean and std variables from the merged X.test,X.train datasets.
### Extract variables for mean and std statistics
library(stringi)
Indexlist<-vector()
for (i in (1:562)) {

        if (stri_detect_fixed(varlist[i],"-mean()")==T)
                {
                Index<-i
                Indexlist<-c(Indexlist,Index)
        }
        else {if (stri_detect_fixed(varlist[i],"-std()")==T) 
                {     
                Index<-i
                Indexlist<-c(Indexlist,Index)
           }
        }
}
result<-result[,Indexlist]

#### Merge all the variables to create Dataset 1
Dataset1<-cbind(subject.id,label,result,I.body.acc.x.mean,I.body.acc.x.std,I.body.acc.y.mean,I.body.acc.y.std,I.body.acc.z.mean,I.body.acc.z.std,I.body.gyro.x.mean,I.body.gyro.x.std,I.body.gyro.y.mean,I.body.gyro.y.std,I.body.gyro.z.mean,I.body.gyro.z.std,I.total.acc.x.mean,I.total.acc.x.std,I.total.acc.y.mean,I.total.acc.y.std,I.total.acc.z.mean,I.total.acc.z.std)

InertiaDat<-data.frame(subject.id=subject.id,result=result,label=label,body.acc.x=body.acc.x,body.acc.y=body.acc.y,body.acc.z=body.acc.z,body.gyro.x=body.gyro.x,body.gyro.z=body.gyro.z,total.acc.x=total.acc.x,total.acc.y=total.acc.y,total.acc.z=total.acc.z)
## Create means of each variable and each subject 

Dataset2<-aggregate(x = Dataset1, by = list(Dataset1$Subject.ID, Dataset1$ActivityLabel), FUN = "mean")
Dataset2$Group.1 <- NULL
Dataset2$Group.2 <- NULL

## Output Dataset1 and Dataset 2
write.csv(Dataset1, file="E:/coursera/Getting and cleaning data/final project/Dataset1.csv")
write.table(Dataset1, file="E:/coursera/Getting and cleaning data/final project/Dataset1.txt")
write.csv(Dataset2, file="E:/coursera/Getting and cleaning data/final project/Dataset2.csv")
write.table(Dataset2, file="E:/coursera/Getting and cleaning data/final project/Dataset2.txt")
