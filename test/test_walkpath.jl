
pth = joinpath(dirname(pathof(OpenStreetMapX)),"..","test","data","sg_walk.osm")
m =  OpenStreetMapX.get_map_data(pth,use_cache = false);

@testset "walk_map" begin
    @test length(m.nodes) == 410964
    @test length(m.roadways) == 469941
end

# @show length(m.roadways), typeof(m.roadways)
# @show m.roadways[1]. sds

# @show length(m.nodes), typeof(m.nodes)
# @show m.nodes[1]

