# Copyright (C) 2008 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Warning: this is actually a product definition, to be inherited from

# Many of the TrueType files here may be shipped either as-is or compressed in .woff format
# to save space, depending on product requirements.
# Compression is chosen by specifying MOZ_PRODUCT_COMPRESS_FONTS := true in the product.
ifeq ($(MOZ_PRODUCT_COMPRESS_FONTS), true)
TTF_EXT := .woff
else
TTF_EXT := .ttf
endif

ifeq ($(strip $(MOZ_FONTS_IN_DATA)), true)
DST_DIR := data
else
DST_DIR := system
endif

# Android fonts
PRODUCT_COPY_FILES += \
    external/moztt/AndroidFonts/DroidNaskh-Regular$(TTF_EXT):$(DST_DIR)/fonts/DroidNaskh-Regular$(TTF_EXT) \
    external/moztt/AndroidFonts/DroidSansHebrew-Regular$(TTF_EXT):$(DST_DIR)/fonts/DroidSansHebrew-Regular$(TTF_EXT) \
    external/moztt/AndroidFonts/DroidSansHebrew-Bold$(TTF_EXT):$(DST_DIR)/fonts/DroidSansHebrew-Bold$(TTF_EXT) \
    external/moztt/AndroidFonts/DroidSansArmenian$(TTF_EXT):$(DST_DIR)/fonts/DroidSansArmenian$(TTF_EXT) \
    external/moztt/AndroidFonts/DroidSansEthiopic-Regular$(TTF_EXT):$(DST_DIR)/fonts/DroidSansEthiopic-Regular$(TTF_EXT) \
    external/moztt/AndroidFonts/DroidSansFallback$(TTF_EXT):$(DST_DIR)/fonts/DroidSansFallback$(TTF_EXT) \
    external/moztt/AndroidFonts/DroidSansGeorgian$(TTF_EXT):$(DST_DIR)/fonts/DroidSansGeorgian$(TTF_EXT) \
    external/moztt/AndroidFonts/DroidSansMono$(TTF_EXT):$(DST_DIR)/fonts/DroidSansMono$(TTF_EXT) \
    external/moztt/AndroidFonts/DroidSerif-Regular$(TTF_EXT):$(DST_DIR)/fonts/DroidSerif-Regular$(TTF_EXT) \
    external/moztt/AndroidFonts/DroidSerif-Bold$(TTF_EXT):$(DST_DIR)/fonts/DroidSerif-Bold$(TTF_EXT) \
    external/moztt/AndroidFonts/DroidSerif-Italic$(TTF_EXT):$(DST_DIR)/fonts/DroidSerif-Italic$(TTF_EXT) \
    external/moztt/AndroidFonts/DroidSerif-BoldItalic$(TTF_EXT):$(DST_DIR)/fonts/DroidSerif-BoldItalic$(TTF_EXT) \
    external/moztt/AndroidFonts/MTLmr3m$(TTF_EXT):$(DST_DIR)/fonts/MTLmr3m$(TTF_EXT) \
    external/moztt/AndroidFonts/MTLc3m$(TTF_EXT):$(DST_DIR)/fonts/MTLc3m$(TTF_EXT) \
    $(NULL)

# MozTT fonts that we don't compress, because there's relatively little gain to be had
# and/or because they're primary UI fonts that we want instantly available.
PRODUCT_COPY_FILES += \
    external/moztt/FiraMono-2.001/FiraMonoOT-Bold.otf:$(DST_DIR)/fonts/FiraMonoOT-Bold.otf \
    external/moztt/FiraMono-2.001/FiraMonoOT-Regular.otf:$(DST_DIR)/fonts/FiraMonoOT-Regular.otf \
    external/moztt/FiraSans-2.001/FiraSansOT-Bold.otf:$(DST_DIR)/fonts/FiraSansOT-Bold.otf \
    external/moztt/FiraSans-2.001/FiraSansOT-BoldItalic.otf:$(DST_DIR)/fonts/FiraSansOT-BoldItalic.otf \
    external/moztt/FiraSans-2.001/FiraSansOT-Light.otf:$(DST_DIR)/fonts/FiraSansOT-Light.otf \
    external/moztt/FiraSans-2.001/FiraSansOT-LightItalic.otf:$(DST_DIR)/fonts/FiraSansOT-LightItalic.otf \
    external/moztt/FiraSans-2.001/FiraSansOT-Medium.otf:$(DST_DIR)/fonts/FiraSansOT-Medium.otf \
    external/moztt/FiraSans-2.001/FiraSansOT-MediumItalic.otf:$(DST_DIR)/fonts/FiraSansOT-MediumItalic.otf \
    external/moztt/FiraSans-2.001/FiraSansOT-Regular.otf:$(DST_DIR)/fonts/FiraSansOT-Regular.otf \
    external/moztt/FiraSans-2.001/FiraSansOT-RegularItalic.otf:$(DST_DIR)/fonts/FiraSansOT-RegularItalic.otf \
    external/moztt/Roboto-20120823/Roboto-Bold.ttf:$(DST_DIR)/fonts/Roboto-Bold.ttf \
    external/moztt/Roboto-20120823/Roboto-BoldItalic.ttf:$(DST_DIR)/fonts/Roboto-BoldItalic.ttf \
    external/moztt/Roboto-20120823/Roboto-Italic.ttf:$(DST_DIR)/fonts/Roboto-Italic.ttf \
    external/moztt/Roboto-20120823/Roboto-Regular.ttf:$(DST_DIR)/fonts/Roboto-Regular.ttf \
    $(NULL)

# MozTT fonts that we ship in .woff form when ROM size is at a premium.
PRODUCT_COPY_FILES += \
    external/moztt/CharisSILCompact-4.114/CharisSILCompact-B$(TTF_EXT):$(DST_DIR)/fonts/CharisSILCompact-B$(TTF_EXT) \
    external/moztt/CharisSILCompact-4.114/CharisSILCompact-BI$(TTF_EXT):$(DST_DIR)/fonts/CharisSILCompact-BI$(TTF_EXT) \
    external/moztt/CharisSILCompact-4.114/CharisSILCompact-I$(TTF_EXT):$(DST_DIR)/fonts/CharisSILCompact-I$(TTF_EXT) \
    external/moztt/CharisSILCompact-4.114/CharisSILCompact-R$(TTF_EXT):$(DST_DIR)/fonts/CharisSILCompact-R$(TTF_EXT) \
    external/moztt/DroidSans/DroidSansThai$(TTF_EXT):$(DST_DIR)/fonts/DroidSansThai$(TTF_EXT) \
    external/moztt/Lohit/lohit-gujarati-ttf-2.5.3/Lohit-Gujarati$(TTF_EXT):$(DST_DIR)/fonts/Lohit-Gujarati$(TTF_EXT) \
    external/moztt/Lohit/lohit-kannada-ttf-2.5.3/Lohit-Kannada$(TTF_EXT):$(DST_DIR)/fonts/Lohit-Kannada$(TTF_EXT) \
    external/moztt/Lohit/lohit-malayalam-ttf-2.5.3/Lohit-Malayalam$(TTF_EXT):$(DST_DIR)/fonts/Lohit-Malayalam$(TTF_EXT) \
    external/moztt/Lohit/lohit-oriya-ttf-2.5.4.1/Lohit-Oriya$(TTF_EXT):$(DST_DIR)/fonts/Lohit-Oriya$(TTF_EXT) \
    external/moztt/Lohit/lohit-punjabi-ttf-2.5.3/Lohit-Punjabi$(TTF_EXT):$(DST_DIR)/fonts/Lohit-Punjabi$(TTF_EXT) \
    external/moztt/Lohit/lohit-telugu-ttf-2.5.3/Lohit-Telugu$(TTF_EXT):$(DST_DIR)/fonts/Lohit-Telugu$(TTF_EXT) \
    external/moztt/Noto/NotoSansBengali-Bold$(TTF_EXT):$(DST_DIR)/fonts/NotoSansBengali-Bold$(TTF_EXT) \
    external/moztt/Noto/NotoSansBengali-Regular$(TTF_EXT):$(DST_DIR)/fonts/NotoSansBengali-Regular$(TTF_EXT) \
    external/moztt/Noto/NotoSansDevanagari-Bold$(TTF_EXT):$(DST_DIR)/fonts/NotoSansDevanagari-Bold$(TTF_EXT) \
    external/moztt/Noto/NotoSansDevanagari-Regular$(TTF_EXT):$(DST_DIR)/fonts/NotoSansDevanagari-Regular$(TTF_EXT) \
    external/moztt/Noto/NotoSansTamil-Bold$(TTF_EXT):$(DST_DIR)/fonts/NotoSansTamil-Bold$(TTF_EXT) \
    external/moztt/Noto/NotoSansTamil-Regular$(TTF_EXT):$(DST_DIR)/fonts/NotoSansTamil-Regular$(TTF_EXT) \
    external/moztt/Padauk-2.80/Padauk$(TTF_EXT):$(DST_DIR)/fonts/Padauk$(TTF_EXT) \
    external/moztt/Padauk-2.80/Padauk-bold$(TTF_EXT):$(DST_DIR)/fonts/Padauk-bold$(TTF_EXT) \
    $(NULL)

# Replaced by Noto font
#    external/moztt/Lohit/lohit-bengali-ttf-2.5.3/Lohit-Bengali$(TTF_EXT):$(DST_DIR)/fonts/Lohit-Bengali$(TTF_EXT) \
#    external/moztt/Lohit/lohit-devanagari-ttf-2.91.0/Lohit-Devanagari$(TTF_EXT):$(DST_DIR)/fonts/Lohit-Devanagari$(TTF_EXT) \
#    external/moztt/Lohit/lohit-tamil-ttf-2.5.3/Lohit-Tamil$(TTF_EXT):$(DST_DIR)/fonts/Lohit-Tamil$(TTF_EXT) \

# Lohit fonts not currently included, because they support language-specific variant renderings
# of scripts also supported by other fonts already present above.
#    external/moztt/Lohit/lohit-assamese-ttf-2.5.3/Lohit-Assamese.ttf:$(DST_DIR)/fonts/Lohit-Assamese.ttf \
#    external/moztt/Lohit/lohit-marathi-ttf-2.5.3/Lohit-Marathi.ttf:$(DST_DIR)/fonts/Lohit-Marathi.ttf \
#    external/moztt/Lohit/lohit-nepali-ttf-2.5.3/Lohit-Nepali.ttf:$(DST_DIR)/fonts/Lohit-Nepali.ttf \
#    external/moztt/Lohit/lohit-tamil-classical-ttf-2.5.3/Lohit-Tamil-Classical.ttf:$(DST_DIR)/fonts/Lohit-Tamil-Classical.ttf \
# These may be moved into the build later if localizers explicitly request them via CSS styling.

