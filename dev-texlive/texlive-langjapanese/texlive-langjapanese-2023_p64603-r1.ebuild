# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

TEXLIVE_MODULE_CONTENTS="
	collection-langjapanese.r64603
	ascmac.r53411
	asternote.r63838
	babel-japanese.r57733
	bxbase.r66115
	bxcjkjatype.r67705
	bxghost.r66147
	bxjaholiday.r60636
	bxjalipsum.r67620
	bxjaprnind.r59641
	bxjatoucs.r52509
	bxjscls.r69637
	bxorigcapt.r64072
	bxwareki.r67594
	convbkmk.r49252
	endnotesj.r47703
	gckanbun.r61719
	gentombow.r64333
	haranoaji.r68501
	haranoaji-extra.r68500
	ieejtran.r65641
	ifptex.r66803
	ifxptex.r46153
	ipaex.r61719
	japanese-mathformulas.r64678
	japanese-otf.r68492
	jieeetran.r65642
	jlreq.r67400
	jlreq-deluxe.r66115
	jpneduenumerate.r63893
	jpnedumathsymbols.r63864
	jsclasses.r66093
	kanbun.r62026
	luatexja.r69245
	mendex-doc.r62914
	morisawa.r46946
	pbibtex-base.r66085
	platex.r67315
	platex-tools.r66185
	plautopatch.r64072
	ptex.r66186
	ptex-base.r64072
	ptex-fontmaps.r65953
	ptex-fonts.r64330
	ptex2pdf.r65953
	pxbase.r66187
	pxchfon.r68103
	pxcjkcat.r63967
	pxjahyper.r66272
	pxjodel.r64072
	pxrubrica.r66298
	pxufont.r67573
	uplatex.r66186
	uptex.r66381
	uptex-base.r68298
	uptex-fonts.r68297
	wadalab.r42428
	zxjafbfont.r28539
	zxjatype.r53500
"
TEXLIVE_MODULE_DOC_CONTENTS="
	ascmac.doc.r53411
	asternote.doc.r63838
	babel-japanese.doc.r57733
	bxbase.doc.r66115
	bxcjkjatype.doc.r67705
	bxghost.doc.r66147
	bxjaholiday.doc.r60636
	bxjalipsum.doc.r67620
	bxjaprnind.doc.r59641
	bxjatoucs.doc.r52509
	bxjscls.doc.r69637
	bxorigcapt.doc.r64072
	bxwareki.doc.r67594
	convbkmk.doc.r49252
	endnotesj.doc.r47703
	gckanbun.doc.r61719
	gentombow.doc.r64333
	haranoaji.doc.r68501
	haranoaji-extra.doc.r68500
	ieejtran.doc.r65641
	ifptex.doc.r66803
	ifxptex.doc.r46153
	ipaex.doc.r61719
	japanese-mathformulas.doc.r64678
	japanese-otf.doc.r68492
	jieeetran.doc.r65642
	jlreq.doc.r67400
	jlreq-deluxe.doc.r66115
	jpneduenumerate.doc.r63893
	jpnedumathsymbols.doc.r63864
	jsclasses.doc.r66093
	kanbun.doc.r62026
	lshort-japanese.doc.r36207
	luatexja.doc.r69245
	mendex-doc.doc.r62914
	morisawa.doc.r46946
	pbibtex-base.doc.r66085
	pbibtex-manual.doc.r66181
	platex.doc.r67315
	platex-tools.doc.r66185
	platexcheat.doc.r49557
	plautopatch.doc.r64072
	ptex.doc.r66186
	ptex-base.doc.r64072
	ptex-fontmaps.doc.r65953
	ptex-fonts.doc.r64330
	ptex-manual.doc.r68147
	ptex2pdf.doc.r65953
	pxbase.doc.r66187
	pxchfon.doc.r68103
	pxcjkcat.doc.r63967
	pxjahyper.doc.r66272
	pxjodel.doc.r64072
	pxrubrica.doc.r66298
	pxufont.doc.r67573
	texlive-ja.doc.r66482
	uplatex.doc.r66186
	uptex.doc.r66381
	uptex-base.doc.r68298
	uptex-fonts.doc.r68297
	wadalab.doc.r42428
	zxjafbfont.doc.r28539
	zxjatype.doc.r53500
"
TEXLIVE_MODULE_SRC_CONTENTS="
	ascmac.source.r53411
	babel-japanese.source.r57733
	bxjscls.source.r69637
	japanese-otf.source.r68492
	jlreq.source.r67400
	jsclasses.source.r66093
	luatexja.source.r69245
	mendex-doc.source.r62914
	morisawa.source.r46946
	platex.source.r67315
	ptex-fontmaps.source.r65953
	pxrubrica.source.r66298
	uplatex.source.r66186
"

inherit texlive-module

DESCRIPTION="TeXLive Japanese"

LICENSE="BSD BSD-2 GPL-1+ GPL-2 GPL-3 LPPL-1.3 LPPL-1.3c MIT OFL-1.1 TeX TeX-other-free public-domain"
SLOT="0"
KEYWORDS="~amd64 ~arm ~arm64 ~loong ~ppc ~ppc64 ~riscv ~s390 ~sparc ~x86"
COMMON_DEPEND="
	>=dev-texlive/texlive-langcjk-2023
"
RDEPEND="
	${COMMON_DEPEND}
	dev-lang/ruby
"
DEPEND="
	${COMMON_DEPEND}
	>=dev-texlive/texlive-latex-2023
"

TEXLIVE_MODULE_BINSCRIPTS="
	texmf-dist/scripts/convbkmk/convbkmk.rb
	texmf-dist/scripts/ptex-fontmaps/kanji-config-updmap-sys.sh
	texmf-dist/scripts/ptex-fontmaps/kanji-config-updmap-user.sh
	texmf-dist/scripts/ptex-fontmaps/kanji-config-updmap.pl
	texmf-dist/scripts/ptex-fontmaps/kanji-fontmap-creator.pl
	texmf-dist/scripts/ptex2pdf/ptex2pdf.lua
"
