package Acao::Schema::Result::PermissaoVolume;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 NAME

Acao::Schema::Result::PermissaoVolume

=cut

__PACKAGE__->table("permissao_volume");

=head1 ACCESSORS

=head2 id_volume

  data_type: 'varchar'
  is_foreign_key: 1
  is_nullable: 0
  size: 255

=head2 dn

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=cut

__PACKAGE__->add_columns(
    "id_volume",
    {
        data_type      => "varchar",
        is_foreign_key => 1,
        is_nullable    => 0,
        size           => 255
    },
    "dn",
    { data_type => "varchar", is_nullable => 0, size => 255 },
);
__PACKAGE__->set_primary_key( "id_volume", "dn" );

=head1 RELATIONS

=head2 id_volume

Type: belongs_to

Related object: L<Acao::Schema::Result::Volume>

=cut

__PACKAGE__->belongs_to(
    "id_volume",
    "Acao::Schema::Result::Volume",
    { id_volume     => "id_volume" },
    { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

# Created by DBIx::Class::Schema::Loader v0.07005 @ 2011-02-08 15:10:11
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:qDER0NyawI0brgVjttseDw

# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
