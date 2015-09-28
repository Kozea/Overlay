EAPI=4

inherit eutils git-2 autotools

DESCRIPTION="A C/C++ implementation of a Sass compiler."
HOMEPAGE="http://libsass.org/"
EGIT_PROJECT='libsass'
EGIT_REPO_URI="https://github.com/sass/libsass.git"
LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""
DEPEND=""
RDEPEND="${DEPEND}"
DEPEND="${DEPEND}"

pkg_pretend() {
    # older gcc is not supported
    local major=$(gcc-major-version)
    local minor=$(gcc-minor-version)
    [[ "${MERGE_TYPE}" != "binary" && ( $major > 4 || ( $major == 4 && $minor < 5 ) ) ]] && \
        die "Sorry, but gcc earlier than 4.5 will not work for libsass."
}

src_prepare() {
   eautoreconf
}
