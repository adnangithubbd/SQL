import pandas as pd

data = [[1, 'a@b.com'], [2, 'c@d.com'], [3, 'a@b.com']]
person = pd.DataFrame(data, columns=['id', 'email']).astype({'id':'Int64', 'email':'object'})

print(person)

res=person.groupby('email').size().reset_index(name='email_count')
 

dup=person['email'].tolist()
print(dup)
