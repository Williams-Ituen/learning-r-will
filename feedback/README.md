# Feedback on your BMI coding challenge script

Overall, coding syntax and approach shows that you have grasped and understood what we have been discussing with regard to basics of using R. Well done. Following are more specific bullet points of what you have done well and some points on what you can consider doing next time as you progress with your work in R.

## 1. Good use of intermediate objects

You made good use of intermediate objects for weight and height so that you can make the code for calculating BMI more succinct. This is a good indication of your appreciation of the object-oriented programming approach in R.

## 2. Make object names more useful/meaningful

You can try to make your object names more useful. Whilst `hhhh` and `wwww` are totally acceptable for objects names for height and weight, it helps when the object names are more descriptive of what they are representing. So, for height, it can be as direct as `height` and weight can be given `weight` as its object name. You can also use shortand or such as `ht` for height and `wt` for weight.

## 3. Use code to answer questions completely

In your answer to the question "How many records have BMI higher than 23", you used the following code:

```R
bmi_hh_ww > 23
```

which gives:

```
[1]  TRUE  TRUE  TRUE  TRUE  TRUE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
```

And then you answered *"five records are higher than 23.000, but when approximated two records above 23"*

When I see this answer, what I get from it is that your code only gave you part of the answer and then you had to do a manual count (I am guessing) of the TRUE values to know how many records are above 23 BMI. So, it is correct but part of the answer is code and part of the answer is a manual process.

The alternative is to write code that will give you the answer needed. It can look something like this:

```R
length(bmi_hh_ww[bmi_hh_ww > 23])
```

which gives you

```
[1] 5
```

In the code I suggest, you are using all the indexing and operators and functions that we discussed. Nothing fancy or new there. Maybe you can try that next time with a similar problem or question.

## 4. Give you code some breathing space and make it more readable

This is not a big issue as it is a style preference but I think it is important. Your code can use with some more spacing in between lines especially when it is a new topic or new task. This helps reader/reviewer/collaborator read your code.

