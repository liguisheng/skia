
out vec4 sk_FragColor;
void main() {
    {
        sk_FragColor.x = 0.5;
        sk_FragColor = vec4(6.0, 7.0, 9.0, 11.0);
        sk_FragColor = vec4(7.0, 9.0, 9.0, 9.0);
        sk_FragColor = vec4(2.0, 4.0, 6.0, 8.0);
        sk_FragColor = vec4(12.0, 6.0, 4.0, 3.0);
        sk_FragColor.x = 6.0;
        sk_FragColor.x = 1.0;
        sk_FragColor.x = -2.0;
        sk_FragColor.x = 3.0;
        sk_FragColor.x = 4.0;
        sk_FragColor.x = -5.0;
        sk_FragColor.x = 6.0;
        sk_FragColor.x = 7.0;
        sk_FragColor.x = -8.0;
        sk_FragColor.x = 9.0;
        sk_FragColor.x = -10.0;
        sk_FragColor = vec4(sqrt(1.0));
        sk_FragColor = vec4(sqrt(2.0));
        sk_FragColor = vec4(0.0);
        sk_FragColor = vec4(0.0);
        sk_FragColor = vec4(0.0);
        sk_FragColor = vec4(sqrt(6.0));
        sk_FragColor = vec4(sqrt(7.0));
        sk_FragColor = vec4(sqrt(8.0));
        sk_FragColor = vec4(sqrt(9.0));
        sk_FragColor = vec4(0.0);
        sk_FragColor = vec4(0.0);
        sk_FragColor = vec4(sqrt(12.0));
        sk_FragColor = vec4(sqrt(13.0));
        sk_FragColor = vec4(0.0);
        sk_FragColor = vec4(0.0);
        sk_FragColor = vec4(sqrt(16.0));
        sk_FragColor = vec4(sqrt(17.0));
        sk_FragColor = vec4(0.0);
        sk_FragColor = vec4(sqrt(19.0));
        sk_FragColor = vec4(sqrt(19.5));
        sk_FragColor = vec4(sqrt(20.0));
        sk_FragColor = vec4(sqrt(21.0));
        sk_FragColor = vec4(sqrt(22.0));
        sk_FragColor = vec4(sqrt(23.0));
        sk_FragColor = vec4(sqrt(24.0));
        sk_FragColor += vec4(1.0);
        sk_FragColor -= vec4(1.0);
        sk_FragColor *= vec4(2.0);
        sk_FragColor /= vec4(2.0);
    }

    {
        ivec4 _0_result;
        _0_result.x = 2;
        _0_result = ivec4(ivec2(1), ivec2(2, 3)) + ivec4(5, 6, 7, 8);
        _0_result = ivec4(8, ivec3(10)) - ivec4(1);
        _0_result = ivec4(2) * ivec4(1, 2, 3, 4);
        _0_result = ivec4(12) / ivec4(1, 2, 3, 4);
        sk_FragColor.x = float((ivec4(12) / ivec4(1, 2, 3, 4)).y);
        sk_FragColor.x = ivec4(1) == ivec4(1) ? 1.0 : -1.0;
        sk_FragColor.x = ivec4(1) == ivec4(2) ? 2.0 : -2.0;
        sk_FragColor.x = ivec2(1) == ivec2(1, 1) ? 3.0 : -3.0;
        sk_FragColor.x = ivec2(1, 1) == ivec2(1, 1) ? 4.0 : -4.0;
        sk_FragColor.x = ivec2(1) == ivec2(1, 0) ? 5.0 : -5.0;
        sk_FragColor.x = ivec4(1) == ivec4(ivec2(1), ivec2(1)) ? 6.0 : -6.0;
        sk_FragColor.x = ivec4(ivec3(1), 1) == ivec4(ivec2(1), ivec2(1)) ? 7.0 : -7.0;
        sk_FragColor.x = ivec4(ivec3(1), 1) == ivec4(ivec2(1), 1, 0) ? 8.0 : -8.0;
        sk_FragColor.x = ivec2(1) != ivec2(1, 0) ? 9.0 : -9.0;
        sk_FragColor.x = ivec4(1) != ivec4(ivec2(1), ivec2(1)) ? 10.0 : -10.0;
        _0_result = ivec4(int(sqrt(1.0)));
        _0_result = ivec4(int(sqrt(2.0)));
        _0_result = ivec4(0);
        _0_result = ivec4(0);
        _0_result = ivec4(0);
        _0_result = ivec4(int(sqrt(6.0)));
        _0_result = ivec4(int(sqrt(7.0)));
        _0_result = ivec4(int(sqrt(8.0)));
        _0_result = ivec4(int(sqrt(9.0)));
        _0_result = ivec4(0);
        _0_result = ivec4(0);
        _0_result = ivec4(int(sqrt(12.0)));
        _0_result = ivec4(int(sqrt(13.0)));
        _0_result = ivec4(0);
        _0_result = ivec4(0);
        _0_result = ivec4(int(sqrt(16.0)));
        _0_result = ivec4(int(sqrt(17.0)));
        _0_result = ivec4(0);
        _0_result = ivec4(int(sqrt(19.0)));
        _0_result = ivec4(int(sqrt(19.5)));
        _0_result = ivec4(int(sqrt(20.0)));
        _0_result = ivec4(int(sqrt(21.0)));
        _0_result = ivec4(int(sqrt(22.0)));
        _0_result = ivec4(int(sqrt(23.0)));
        _0_result = ivec4(int(sqrt(24.0)));
        _0_result += ivec4(1);
        _0_result -= ivec4(1);
        _0_result *= ivec4(2);
        _0_result /= ivec4(2);
        sk_FragColor = vec4(_0_result);
    }

}
