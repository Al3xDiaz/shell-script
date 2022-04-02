### python
```python
# select random item of list 
items = list(Product.objects.all())
# change 3 to how many random items you want
random_items = random.sample(items, 3)
# if you want only a single random item
random_item = random.choice(items)
```
