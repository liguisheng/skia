/*
 * Copyright 2020 Google Inc.
 *
 * Use of this source code is governed by a BSD-style license that can be
 * found in the LICENSE file.
 */

@header {
    #include "include/effects/SkArithmeticImageFilter.h"
}

in fragmentProcessor srcFP;
in fragmentProcessor dstFP;
layout(ctype=SkV4) in uniform float4 k;
layout(key) in bool enforcePMColor;

half4 main() {
    half4 src = sample(srcFP);
    half4 dst = sample(dstFP);
    half4 color = saturate(half(k.x) * src * dst +
                           half(k.y) * src +
                           half(k.z) * dst +
                           half(k.w));
    @if (enforcePMColor) {
        color.rgb = min(color.rgb, color.a);
    }
    return color;
}

@optimizationFlags {
    kNone_OptimizationFlags
}

@make{
    static std::unique_ptr<GrFragmentProcessor> Make(std::unique_ptr<GrFragmentProcessor> srcFP,
                                                     std::unique_ptr<GrFragmentProcessor> dstFP,
                                                     const ArithmeticFPInputs& inputs) {
        return std::unique_ptr<GrFragmentProcessor>(new GrArithmeticProcessor(
                std::move(srcFP), std::move(dstFP),
                SkV4{inputs.fK[0], inputs.fK[1], inputs.fK[2], inputs.fK[3]},
                inputs.fEnforcePMColor));
    }
}

@test(d) {
    return GrArithmeticProcessor::Make(
            GrProcessorUnitTest::MakeChildFP(d), GrProcessorUnitTest::MakeChildFP(d),
            ArithmeticFPInputs{d->fRandom->nextF(), d->fRandom->nextF(), d->fRandom->nextF(),
                               d->fRandom->nextF(), d->fRandom->nextBool()});
}
