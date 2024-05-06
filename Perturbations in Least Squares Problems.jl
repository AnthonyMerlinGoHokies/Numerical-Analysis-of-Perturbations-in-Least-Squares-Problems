### A Pluto.jl notebook ###
# v0.19.36

using Markdown
using InteractiveUtils

# ╔═╡ fb83d633-ff85-4f92-b408-5257c60b2cf8
using LinearAlgebra

# ╔═╡ f69867ea-edd1-11ee-1ab1-c3843f4e220d
#######################Questiobn 2(1)##################################

# ╔═╡ 3f26866a-4b23-453b-9ca2-97d8d556c81a
A = [10^2 0; 0 10^-5; 0 0] 

# ╔═╡ fb78287f-7199-4f1a-9cc0-7745b5494295
PA = [0 0; 0 0; 0 10^-6]

# ╔═╡ 10c0ca48-3f87-4ee7-b51d-2c51df7e17cb
PAA = PA + A 

# ╔═╡ 97e4204a-ac40-467a-8c0d-5334470ba382
b = [10^2, 10^5, 0] 

# ╔═╡ 914d67b8-cd3f-436b-8974-cbd55e94162a
x = A \ b

# ╔═╡ 241b918a-4583-4a8e-9bde-24f47eefa06f
px = PAA \ b

# ╔═╡ f549801a-c27c-4ef6-9e8e-795fe08f4937
# so we know that we are dealing with least sqaure promblems thus 

# ╔═╡ 6a9eff56-e295-41e0-9e75-9bc7d4145a98
begin
	numerator = norm(A) * norm(x)
	denominator = norm(A*x)  # Use vec to convert A * x to a vector
	eta = numerator / denominator
end

# ╔═╡ 73f62a3e-1091-4d27-9667-98c8c4129912
#get our peudo
A_pinv = pinv(A)

# ╔═╡ 7682416a-97c4-4a36-995f-8df257d4649e
#Now we need our condition number 
C = norm(A) * norm(A_pinv)

# ╔═╡ 2026873e-d2e4-4058-b7ac-a4fe0b8ff9d1
#now lastly we just want our angle
angle = acos(norm(A*x)/norm(b))

# ╔═╡ cdf1d5ed-dd5b-4d5d-932c-2c5c446163cf
#now lets calculator our relative error and thus our upper boound
rel_err = norm(x - px) /norm(x)

# ╔═╡ 3ebe72f6-e0d0-4f1c-85d6-1c21b13f4330
#now lastly the getting the conditioln numebr the least sqaures problem 
KA = C + ((C^2)*(tan(angle))/eta)   


#this tells use that the condition number and relative error we got suggest that the least squares problem is highly sensitive to changes in the input data, but despite this sensitivity, the error in the solution remains relatively small compared to the solution itself.


# ╔═╡ 6440801b-be91-4ef7-a1f1-3053ee9c849d
################################Questiobn 2(2)########################################

# ╔═╡ 7b648e3b-37da-4061-8fb2-26a7ce595116
A_2 = [10^2 0; 0 10^-5; 0 0]

# ╔═╡ 1e503ca0-bc7b-4696-b00a-8d95a13b1c8e
PA_2 = [0 0; 0 0; 0 10^-6]

# ╔═╡ 6e995e7b-6ecc-4415-b1e9-0d1edf1c9fd2
PAA_2 = PA + A 

# ╔═╡ d972565d-c726-4316-85a4-97d36c6d2815
b_2 = [10^2, 10^-5, 10^-4] 

# ╔═╡ 33370396-69f3-4763-aa9e-a2d758a8a1f7
x_2 = A_2 \ b_2

# ╔═╡ e0bd9931-0988-4f9b-91eb-9b468560b6c8
px_2 = PAA_2 \ b

# ╔═╡ 8bd37100-7729-4b38-867b-5800e589d25f
begin
	numerator_2 = norm(A) * norm(x)
	denominator_2 = norm(A*x)  # Use vec to convert A * x to a vector
	eta_2 = numerator_2 / denominator_2
end

# ╔═╡ ed7cd058-7a03-402e-8339-6a6b81a2c66f
#get our peudo
A_pinv_2 = pinv(A_2)

# ╔═╡ 6d6823e6-2f86-4bc1-966e-8c0b2bec00e2
#Now we need our condition number 
C_2 = norm(A) * norm(A_pinv)

# ╔═╡ 2a862c15-7da3-4ac3-9802-8694ff873bb7
#now lastly we just want our angle
θ = asin(norm(b_2 - A * x_2) / norm(b_2))

# ╔═╡ da2e86c6-ad1f-4fd6-a47d-65a4bf630703
#now lets calculator our relative error and thus our upper boound
rel_err_2 = norm(x_2 - px_2) /norm(x_2)

# ╔═╡ 3c04142a-e200-42e7-935f-734ce6af3e8d
#now lastly the getting the conditioln numebr the least sqaures problem 
KA_2 = C_2+ ((C_2^2)*(tan(θ))/eta_2)   




# ╔═╡ 2ae5b785-e7d5-4aaf-9f92-8768750c5b9c
#based on the new b we can see that our condition number and relative error of the 
#the least squares problem is highly sensitive to input variations, and the error in # the solution is notably pronounced relative to the solution's magnitude.

# ╔═╡ 0f70c94a-0d7f-4ca9-8744-dad735094fec


# ╔═╡ c9943e9f-bbda-4191-802f-32d4b53f17ae


# ╔═╡ 2ec70e66-255e-45c1-bbb9-cf8222e78138
################################Questiobn 2(3)########################################

# ╔═╡ 060fd40f-64e6-4d39-a033-29a857cdea41
A_3 = [10^2 0; 0 10^-5; 0 0]

# ╔═╡ 83ddd268-d70f-4f7f-ad8f-c9c5c75fb96a
PA_3 = [0 0; 0 0; 0 10^-6]

# ╔═╡ c0897087-5612-4dba-8a15-e112395f8128
PAA_3 = PA + A 

# ╔═╡ d023d5ff-5c44-48fd-8fad-5195e9e8d562
b_3 = [10^2, 0, 1] 

# ╔═╡ c54452ab-058e-4219-83a7-f45b660740c5
x_3 = A_3 \ b_3

# ╔═╡ 47b26639-da2c-4409-a1a3-29b52ef2ebdd
px_3 = PAA_3 \ b

# ╔═╡ 781529cd-4ffb-4f66-af9a-a2932d02120a
begin
	numerator_3 = norm(A) * norm(x)
	denominator_3 = norm(A*x)  # Use vec to convert A * x to a vector
	eta_3 = numerator_3 / denominator_3
end

# ╔═╡ cbafb358-dcf5-45d1-812c-fb6faeff31d3
#get our peudo
A_pinv_3 = pinv(A_3)

# ╔═╡ 78a80166-7cd3-4616-91aa-deb425fcffe6
#Now we need our condition number 
C_3 = norm(A_3) * norm(A_pinv_3)

# ╔═╡ d7153ba7-ba8d-4947-9743-ef321f2dedca
#now lastly we just want our angle
θ_3 = asin(norm(b_3 - A * x_3) / norm(b_3))

# ╔═╡ 6cdc6833-6c69-4d11-8024-6fe15072e66d
#now lets calculator our relative error and thus our upper boound
rel_err_3 = norm(x_3 - px_3) /norm(x_3)

# ╔═╡ 00365f49-33e9-4a4d-8285-b8950e890ac6
#now lastly the getting the conditioln numebr the least sqaures problem 
KA_3 = C_3 + ((C_3^2)*(tan(θ_3))/eta_3)   


#this is the largest condishioning  values gotten and the largest realtive error found between the 3. # an based upon our new b we can see thatn summary, with a condition number of and relative error coming from this 
# least squares problem exhibits high sensitivity to input variations, and the error #in the solution is notably substantial relative to the solution's magnitude.

# ╔═╡ 90cb63ee-ad51-45a4-9279-830836cf758d


# ╔═╡ 5a80cb11-6e8f-4f29-8fb1-ca6cd62d52c9


# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
LinearAlgebra = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

[[Libdl]]
uuid = "8f399da3-3557-5675-b5ff-fb832c97cbdb"

[[LinearAlgebra]]
deps = ["Libdl"]
uuid = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"
"""

# ╔═╡ Cell order:
# ╠═f69867ea-edd1-11ee-1ab1-c3843f4e220d
# ╠═fb83d633-ff85-4f92-b408-5257c60b2cf8
# ╠═3f26866a-4b23-453b-9ca2-97d8d556c81a
# ╠═fb78287f-7199-4f1a-9cc0-7745b5494295
# ╠═10c0ca48-3f87-4ee7-b51d-2c51df7e17cb
# ╠═97e4204a-ac40-467a-8c0d-5334470ba382
# ╠═914d67b8-cd3f-436b-8974-cbd55e94162a
# ╠═241b918a-4583-4a8e-9bde-24f47eefa06f
# ╠═f549801a-c27c-4ef6-9e8e-795fe08f4937
# ╠═6a9eff56-e295-41e0-9e75-9bc7d4145a98
# ╠═73f62a3e-1091-4d27-9667-98c8c4129912
# ╠═7682416a-97c4-4a36-995f-8df257d4649e
# ╠═2026873e-d2e4-4058-b7ac-a4fe0b8ff9d1
# ╠═cdf1d5ed-dd5b-4d5d-932c-2c5c446163cf
# ╠═3ebe72f6-e0d0-4f1c-85d6-1c21b13f4330
# ╠═6440801b-be91-4ef7-a1f1-3053ee9c849d
# ╠═7b648e3b-37da-4061-8fb2-26a7ce595116
# ╠═1e503ca0-bc7b-4696-b00a-8d95a13b1c8e
# ╠═6e995e7b-6ecc-4415-b1e9-0d1edf1c9fd2
# ╠═d972565d-c726-4316-85a4-97d36c6d2815
# ╠═33370396-69f3-4763-aa9e-a2d758a8a1f7
# ╠═e0bd9931-0988-4f9b-91eb-9b468560b6c8
# ╠═8bd37100-7729-4b38-867b-5800e589d25f
# ╠═ed7cd058-7a03-402e-8339-6a6b81a2c66f
# ╠═6d6823e6-2f86-4bc1-966e-8c0b2bec00e2
# ╠═2a862c15-7da3-4ac3-9802-8694ff873bb7
# ╠═da2e86c6-ad1f-4fd6-a47d-65a4bf630703
# ╠═3c04142a-e200-42e7-935f-734ce6af3e8d
# ╠═2ae5b785-e7d5-4aaf-9f92-8768750c5b9c
# ╠═0f70c94a-0d7f-4ca9-8744-dad735094fec
# ╠═c9943e9f-bbda-4191-802f-32d4b53f17ae
# ╠═2ec70e66-255e-45c1-bbb9-cf8222e78138
# ╠═060fd40f-64e6-4d39-a033-29a857cdea41
# ╠═83ddd268-d70f-4f7f-ad8f-c9c5c75fb96a
# ╠═c0897087-5612-4dba-8a15-e112395f8128
# ╠═d023d5ff-5c44-48fd-8fad-5195e9e8d562
# ╠═c54452ab-058e-4219-83a7-f45b660740c5
# ╠═47b26639-da2c-4409-a1a3-29b52ef2ebdd
# ╠═781529cd-4ffb-4f66-af9a-a2932d02120a
# ╠═cbafb358-dcf5-45d1-812c-fb6faeff31d3
# ╠═78a80166-7cd3-4616-91aa-deb425fcffe6
# ╠═d7153ba7-ba8d-4947-9743-ef321f2dedca
# ╠═6cdc6833-6c69-4d11-8024-6fe15072e66d
# ╠═00365f49-33e9-4a4d-8285-b8950e890ac6
# ╠═90cb63ee-ad51-45a4-9279-830836cf758d
# ╠═5a80cb11-6e8f-4f29-8fb1-ca6cd62d52c9
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
