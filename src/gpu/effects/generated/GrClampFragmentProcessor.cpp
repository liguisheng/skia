/*
 * Copyright 2019 Google LLC
 *
 * Use of this source code is governed by a BSD-style license that can be
 * found in the LICENSE file.
 */

/**************************************************************************************************
 *** This file was autogenerated from GrClampFragmentProcessor.fp; do not modify.
 **************************************************************************************************/
#include "GrClampFragmentProcessor.h"

#include "src/core/SkUtils.h"
#include "src/gpu/GrTexture.h"
#include "src/gpu/glsl/GrGLSLFragmentProcessor.h"
#include "src/gpu/glsl/GrGLSLFragmentShaderBuilder.h"
#include "src/gpu/glsl/GrGLSLProgramBuilder.h"
#include "src/sksl/SkSLCPP.h"
#include "src/sksl/SkSLUtil.h"
class GrGLSLClampFragmentProcessor : public GrGLSLFragmentProcessor {
public:
    GrGLSLClampFragmentProcessor() {}
    void emitCode(EmitArgs& args) override {
        GrGLSLFPFragmentBuilder* fragBuilder = args.fFragBuilder;
        const GrClampFragmentProcessor& _outer = args.fFp.cast<GrClampFragmentProcessor>();
        (void)_outer;
        auto clampToPremul = _outer.clampToPremul;
        (void)clampToPremul;
        SkString _sample0 = this->invokeChild(0, args);
        fragBuilder->codeAppendf(
                R"SkSL(half4 inputColor = %s;
@if (%s) {
    half alpha = clamp(inputColor.w, 0.0, 1.0);
    return half4(clamp(inputColor.xyz, 0.0, alpha), alpha);
} else {
    return clamp(inputColor, 0.0, 1.0);
}
)SkSL",
                _sample0.c_str(), (_outer.clampToPremul ? "true" : "false"));
    }

private:
    void onSetData(const GrGLSLProgramDataManager& pdman,
                   const GrFragmentProcessor& _proc) override {}
};
GrGLSLFragmentProcessor* GrClampFragmentProcessor::onCreateGLSLInstance() const {
    return new GrGLSLClampFragmentProcessor();
}
void GrClampFragmentProcessor::onGetGLSLProcessorKey(const GrShaderCaps& caps,
                                                     GrProcessorKeyBuilder* b) const {
    b->add32((uint32_t)clampToPremul);
}
bool GrClampFragmentProcessor::onIsEqual(const GrFragmentProcessor& other) const {
    const GrClampFragmentProcessor& that = other.cast<GrClampFragmentProcessor>();
    (void)that;
    if (clampToPremul != that.clampToPremul) return false;
    return true;
}
GrClampFragmentProcessor::GrClampFragmentProcessor(const GrClampFragmentProcessor& src)
        : INHERITED(kGrClampFragmentProcessor_ClassID, src.optimizationFlags())
        , clampToPremul(src.clampToPremul) {
    this->cloneAndRegisterAllChildProcessors(src);
}
std::unique_ptr<GrFragmentProcessor> GrClampFragmentProcessor::clone() const {
    return std::make_unique<GrClampFragmentProcessor>(*this);
}
#if GR_TEST_UTILS
SkString GrClampFragmentProcessor::onDumpInfo() const {
    return SkStringPrintf("(clampToPremul=%s)", (clampToPremul ? "true" : "false"));
}
#endif
GR_DEFINE_FRAGMENT_PROCESSOR_TEST(GrClampFragmentProcessor);
#if GR_TEST_UTILS
std::unique_ptr<GrFragmentProcessor> GrClampFragmentProcessor::TestCreate(GrProcessorTestData* d) {
    return GrClampFragmentProcessor::Make(d->inputFP(), d->fRandom->nextBool());
}
#endif
