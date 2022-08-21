# Skeletonization Algorithm

#### Algorithm that performs the skeletonization of an object. The function that performs the process receives a binary image, in which the object must be black and the background white, and returns an image with a black background and the 'skeleton' of the object white.

## Running algorithm

##### To run the function within the Octave command window, run the following commands within the directory containing the algorithm file:

```
a_skeletonization
skeletonized_image=skeletonization(input_image_name)
imwrite (skeletonized_image, output_image_name)
```

##### If we want to execute the function to an image called *input_image* and that the output is saved in *output_image*, these would be the commands to use:

```
a_skeletonization
skeletonized_image=skeletonization('input_image.jpg')
imwrite (skeletonized_image, 'output_image.jpg')
```

## Examples

<div align="center">

| Input image | Output image |
| --- | --- |
| <p align="center"><img alt="Spider input" src="https://github.com/migromarj/Skeletonization-Algorithm/blob/master/images/input_spider.JPG?raw=true"></p> | <p align="center"><img alt="Spider output" src="https://github.com/migromarj/Skeletonization-Algorithm/blob/master/images/output_spider.jpg"></p> |
| <p align="center"><img alt="Plane input" src="https://github.com/migromarj/Skeletonization-Algorithm/blob/master/images/input_plane.JPG?raw=true"></p> | <p align="center"><img alt="Plane output" src="https://github.com/migromarj/Skeletonization-Algorithm/blob/master/images/output_plane.jpg"></p> |
| <p align="center"><img alt="Head input" src="https://github.com/migromarj/Skeletonization-Algorithm/blob/master/images/input_head.JPG?raw=true"></p> | <p align="center"><img alt="Head output" src="https://github.com/migromarj/Skeletonization-Algorithm/blob/master/images/output_head.jpg"></p> |
| <p align="center"><img alt="Letters input" src="https://github.com/migromarj/Skeletonization-Algorithm/blob/master/images/input_letters.JPG"></p> | <p align="center"><img alt="Letters output" src="https://github.com/migromarj/Skeletonization-Algorithm/blob/master/images/output_letters.jpg"></p> |
| <p align="center"><img alt="Tools input" src="https://github.com/migromarj/Skeletonization-Algorithm/blob/master/images/input_tools.JPG"></p> | <p align="center"><img alt="Tools output" src="https://github.com/migromarj/Skeletonization-Algorithm/blob/master/images/output_tools.jpg"></p> |

</div>
