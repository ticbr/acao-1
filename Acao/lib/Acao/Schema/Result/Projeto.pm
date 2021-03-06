package Acao::Schema::Result::Projeto;

# Copyright 2010 - Prefeitura Municipal de Fortaleza
#
# Este arquivo é parte do programa Ação - Sistema de Acompanhamento de
# Projetos Sociais
#
# O Ação é um software livre; você pode redistribui-lo e/ou modifica-lo
# dentro dos termos da Licença Pública Geral GNU como publicada pela
# Fundação do Software Livre (FSF); na versão 2 da Licença.
#
# Este programa é distribuido na esperança que possa ser util, mas SEM
# NENHUMA GARANTIA; sem uma garantia implicita de ADEQUAÇÂO a qualquer
# MERCADO ou APLICAÇÃO EM PARTICULAR. Veja a Licença Pública Geral GNU
# para maiores detalhes.
#
# Você deve ter recebido uma cópia da Licença Pública Geral GNU, sob o
# título "LICENCA.txt", junto com este programa, se não, escreva para a
# Fundação do Software Livre(FSF) Inc., 51 Franklin St, Fifth Floor,

use strict;
use warnings;

use base 'DBIx::Class';

=head1 NAME

Acao::Schema::Result::Projeto - Resultsource da tabela projeto

=head1 DESCRIPTION

Esta entidade descreve os projetos cadastrados. Neste momento é só uma
tabela de referência uma vez que não temos a implementação da parte
transacional do sistema.

=cut

__PACKAGE__->load_components( "InflateColumn::DateTime", "Core" );
__PACKAGE__->table("projeto");
__PACKAGE__->add_columns(
    "id_projeto",
    {
        data_type         => "serial",
        default_value     => undef,
        is_nullable       => 0,
        is_auto_increment => 1,
    },
    "nome",
    {
        data_type     => "TEXT",
        default_value => undef,
        is_nullable   => 0,
        size          => undef,
    },
);
__PACKAGE__->set_primary_key("id_projeto");
__PACKAGE__->has_many(
    "instrumentos",
    "Acao::Schema::Result::Instrumento",
    { "foreign.id_projeto" => "self.id_projeto" },
);
__PACKAGE__->has_many(
    "definicao_consolidacao",
    "Acao::Schema::Result::DefinicaoConsolidacao",
    { "foreign.id_projeto" => "self.id_projeto" },
);

=head1 COPYRIGHT AND LICENSING

Copyright 2010 - Prefeitura de Fortaleza. Este software é licenciado
sob a GPL versão 2.

=cut

1;
