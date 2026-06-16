parcel_size = 320;
parcelas_x = 10;
parcelas_y = 10;

global.parcelas = ds_grid_create(parcelas_x, parcelas_y);

for (var xx = 0; xx < parcelas_x; xx++)
{
    for (var yy = 0; yy < parcelas_y; yy++)
    {
        global.parcelas[# xx, yy] = 1;
    }
}