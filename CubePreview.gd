extends ViewportContainer

func inform_mats(side_mat, top_mat):
    $Viewport/SideA.material_override = side_mat
    $Viewport/SideB.material_override = top_mat
    $Viewport/SideC.material_override = side_mat
    
    if side_mat:
        side_mat.uv1_scale = Vector3(1/12.0, 1/4.0, 0.0)
        side_mat.uv1_offset = Vector3(0/12.0, 3/4.0, 0.0)
    if top_mat:
        top_mat.uv1_scale = Vector3(1/12.0, 1/4.0, 0.0)
        top_mat.uv1_offset = Vector3(0/12.0, 3/4.0, 0.0)

func force_update():
    $Viewport.update_worlds()