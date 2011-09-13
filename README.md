

# Golden Spiral Progression Utilities

    gpu = require 'golden-progression-util'
    
    arc1 = 412
    arc2 = gpu.next_arc arc1
    
    console.log arc2 # 123
   
    # suppose we have the following geometric properties for the square with arc1
    left1 = 0
    top1 = 0 
    side1 = 10
    
    # we can easily calculate the geometric properties for the next square
    # in the progression ( which has an arc equal to arc2 )
    
    [left2, top2, side2] = gpu.next_square arc1, left1, top1, side1


![Sample Golden Progression](https://github.com/aldonline/golden-progression-util/raw/master/etc/gpu_image_2.png)

![Sample Golden Progression](https://github.com/aldonline/golden-progression-util/raw/master/etc/gpu_image_3.png)


