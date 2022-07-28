varying vec2 vUv;

void main()
{
    // Pattern 1 
    // gl_FragColor = vec4(vUv, 1.0, 1.0);

    // Pattern 2
    // gl_FragColor = vec4(vUv, 0.0, 1.0);

    // Pattern 3
    // gl_FragColor = vec4(vUv.x, vUv.x, vUv.x, 1.0);
    
    /* Pattern 4  */
    // float strength = vUv.y;
    // gl_FragColor = vec4(strength, strength, strength, 1.0);
    

    /* Pattern 5 */
    // float strength = 1.0 - vUv.y;
    // gl_FragColor = vec4(strength, strength, strength, 1.0);


    /* Pattern 6 */
    // float strength = vUv.y * 10.0;
    // gl_FragColor = vec4(strength, strength, strength, 1.0);

    /* Pattern 7 */
    // float strength = mod(vUv.y * 10.0, 1.0);    // modulus
    // gl_FragColor = vec4(strength, strength, strength, 1.0);
 
    /* Pattern 8  three options for if statement in glsl */
   
    // float strength = mod(vUv.y * 10.0, 1.0);    // modulus
    // if(strength < 0.5){
    //     strength = 0.0;
    // }else {
    //     strength =1.0;
    // }

    // Or ternary instead of if statement

    // strength = strength < 0.5 ? 0.0 : 1.0;

    // Or step function is better with performance

    // strength = step(0.5, strength);
    // gl_FragColor = vec4(strength, strength, strength, 1.0);
    
    /* Pattern 9 */
    // float strength = mod(vUv.y * 10.0, 1.0);    // modulus
    // strength = step(0.8, strength);     // step function

    // gl_FragColor = vec4(strength, strength, strength, 1.0);
 
    /* Pattern 10 */
    // float strength = mod(vUv.x * 10.0, 1.0);    // modulus
    // strength = step(0.8, strength);     // step function

    // gl_FragColor = vec4(strength, strength, strength, 1.0);
 
    /* Pattern 11 */
    // float strength = step(0.8, mod(vUv.x * 10.0, 1.0));     // step function
    // strength += step(0.8, mod(vUv.y * 10.0, 1.0));

    // gl_FragColor = vec4(strength, strength, strength, 1.0);
 
    /* Pattern 12 */
    // float strength = step(0.8, mod(vUv.x * 10.0, 1.0));     // step function
    // strength *= step(0.8, mod(vUv.y * 10.0, 1.0));

    // gl_FragColor = vec4(strength, strength, strength, 1.0);
 
    /* Pattern 13 */
    // float strength = step(0.4, mod(vUv.x * 10.0, 1.0));     // step function
    // strength *= step(0.8, mod(vUv.y * 10.0, 1.0));

    // gl_FragColor = vec4(strength, strength, strength, 1.0);
 
    /* Pattern 14 */
    // float barX = step(0.4, mod(vUv.x * 10.0, 1.0));     // step function
    // barX *= step(0.8, mod(vUv.y * 10.0, 1.0));
    
    // float barY = step(0.8, mod(vUv.x * 10.0, 1.0));     // step function
    // barY *= step(0.4, mod(vUv.y * 10.0, 1.0));

    // float strength = barX + barY;

    // gl_FragColor = vec4(strength, strength, strength, 1.0);
 
    /* Pattern 15 */
    // float barX = step(0.4, mod(vUv.x * 10.0, 1.0));     // step function
    // barX *= step(0.8, mod(vUv.y * 10.0 + 0.2, 1.0));
    
    // float barY = step(0.8, mod(vUv.x * 10.0 + 0.2, 1.0));     // step function
    // barY *= step(0.4, mod(vUv.y * 10.0, 1.0));

    // float strength = barX + barY;

    // gl_FragColor = vec4(strength, strength, strength, 1.0);
 
    /* Pattern 16 */
    
    // float strength = abs(vUv.x- 0.5);   // absolute value
    // gl_FragColor = vec4(strength, strength, strength, 1.0);
 
    /* Pattern 17 */
    
    // float strength = min(abs(vUv.x- 0.5), abs(vUv.y- 0.5));   // min value
    // gl_FragColor = vec4(strength, strength, strength, 1.0);
 
    /* Pattern 18 */
    
    // float strength = max(abs(vUv.x- 0.5), abs(vUv.y- 0.5));   // max value
    // gl_FragColor = vec4(strength, strength, strength, 1.0);
 
    /* Pattern 19 */
    
    // float strength = step(0.2, max(abs(vUv.x- 0.5), abs(vUv.y- 0.5)));  
    // gl_FragColor = vec4(strength, strength, strength, 1.0);
    
    /* Pattern 20 */
    
    float square1 = step(0.2, max(abs(vUv.x- 0.5), abs(vUv.y- 0.5)));  
    float square2 = 1.0 - step(0.25, max(abs(vUv.x- 0.5), abs(vUv.y- 0.5)));  
    float strength = square1 * square2;
    gl_FragColor = vec4(strength, strength, strength, 1.0);
 


}