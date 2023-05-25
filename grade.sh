CPATH='.:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar'

rm -rf student-submission
rm -rf grading-area

mkdir grading-area

git clone $1 student-submission
echo 'Finished cloning'

set -e

if [[ -f ListExamples.java]]
then 
  echo "submitted successfully"
else
  exit
fi

cp -r student-submission grading-area
cd grading-area
javac ListExamples.java TestlistExamples.java
java TestlistExamples






# Draw a picture/take notes on the directory structure that's set up after
# getting to this point

# Then, add here code to compile and run, and do any post-processing of the
# tests
