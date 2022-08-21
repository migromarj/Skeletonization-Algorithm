pkg load image;

function res = skeletonization(image)
  %Input: Name of the image to skeletonize, size MxN , region to skeletonize to 1's, background to 0's
  %Output : MxN matrix (skeletonized image)
  
  f = imread(image);

  [M,N] = size (f) %M -> rows, N -> columns

  %Binarization with threshold T=127
  
  f_binarized=f>=127
  
  %bwdist computes the Euclidean distance transform of the binary image f.
  %For each pixel in f, the distance transformation assigns a number that is
  %the distance between that pixel and the closest non-zero pixel in f.
  
  [D,IDX] = bwdist(f_binarized);
  
  %Para que la matriz tenga números entre 0 y 1 después de hacer bwdist
  
  max_value=max(max(D));
  newImage = double(D/max_value)
  
  %First mask, which acts as a high-pass filter
    
  mask_fpa=[-1,-1,-1;-1,8,-1;-1,-1,-1]

  % We apply the first mask
  %imfilter filters the multidimensional array newImage with filter mask_fpa and returns the result in filtered_img.

  filtered_img = imfilter(newImage, mask_fpa);

  %imadjust maps the intensity values ??in the grayscale image new_filtered_img to new values ??in f_img_adjust.
  %This operation increases the contrast of the output image f_img_adjust.
  
  %new_filtered_img is multiplied by newImage so that the dark colors are made even darker
  %and thus the spurious segments in the resulting image are not so noticeable.

  f_img_adjust = imadjust(filtered_img.*newImage);

  %The skeletonized image is returned
    
  res = f_img_adjust;
  
  
endfunction