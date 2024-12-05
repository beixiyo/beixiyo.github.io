[@jl-org/tool](../README.md) / [Modules](../modules.md) / animation

# Module: animation

## Table of contents

### Classes

- [ATo](../classes/animation.ATo.md)

### Type Aliases

- [TimeFunc](animation.md#timefunc)
- [TimeFuncStr](animation.md#timefuncstr)

### Variables

- [timeFunc](animation.md#timefunc-1)

### Functions

- [applyAnimation](animation.md#applyanimation)
- [createAnimation](animation.md#createanimation)
- [createAnimationByTime](animation.md#createanimationbytime)
- [genTimeFunc](animation.md#gentimefunc)

## Type Aliases

### TimeFunc

Ƭ **TimeFunc**: [`TimeFuncStr`](animation.md#timefuncstr) \| (`progress`: `number`) => `number`

### 动画过渡函数
支持内置函数和函数，函数需要返回一个 `0 ~ 1` 之间的值

#### Defined in

[src/animation/timeFunc.ts:239](https://github.com/beixiyo/jl-tool/blob/45e2229/src/animation/timeFunc.ts#L239)

___

### TimeFuncStr

Ƭ **TimeFuncStr**: keyof typeof [`timeFunc`](animation.md#timefunc-1)

#### Defined in

[src/animation/timeFunc.ts:234](https://github.com/beixiyo/jl-tool/blob/45e2229/src/animation/timeFunc.ts#L234)

## Variables

### timeFunc

• `Const` **timeFunc**: `Object`

贝塞尔曲线对象

#### Type declaration

| Name | Type |
| :------ | :------ |
| `ease` | (`progress`: `number`) => `number` |
| `easeIn` | (`progress`: `number`) => `number` |
| `easeInOut` | (`progress`: `number`) => `number` |
| `easeOut` | (`progress`: `number`) => `number` |
| `linear` | (`progress`: `number`) => `number` |
| `backIn` | (`k`: `number`) => `number` |
| `backInOut` | (`k`: `number`) => `number` |
| `backOut` | (`k`: `number`) => `number` |
| `bounceIn` | (`k`: `number`) => `number` |
| `bounceInOut` | (`k`: `number`) => `number` |
| `bounceOut` | (`k`: `number`) => `number` |
| `circularIn` | (`k`: `number`) => `number` |
| `circularInOut` | (`k`: `number`) => `number` |
| `circularOut` | (`k`: `number`) => `number` |
| `cubicIn` | (`k`: `number`) => `number` |
| `cubicInOut` | (`k`: `number`) => `number` |
| `cubicOut` | (`k`: `number`) => `number` |
| `elasticIn` | (`k`: `number`) => `number` |
| `elasticInOut` | (`k`: `number`) => `number` |
| `elasticOut` | (`k`: `number`) => `number` |
| `exponentialIn` | (`k`: `number`) => `number` |
| `exponentialInOut` | (`k`: `number`) => `number` |
| `exponentialOut` | (`k`: `number`) => `number` |
| `quadraticIn` | (`k`: `number`) => `number` |
| `quadraticInOut` | (`k`: `number`) => `number` |
| `quadraticOut` | (`k`: `number`) => `number` |
| `quarticIn` | (`k`: `number`) => `number` |
| `quarticInOut` | (`k`: `number`) => `number` |
| `quarticOut` | (`k`: `number`) => `number` |
| `quinticIn` | (`k`: `number`) => `number` |
| `quinticInOut` | (`k`: `number`) => `number` |
| `quinticOut` | (`k`: `number`) => `number` |
| `sinusoidalIn` | (`k`: `number`) => `number` |
| `sinusoidalInOut` | (`k`: `number`) => `number` |
| `sinusoidalOut` | (`k`: `number`) => `number` |

#### Defined in

[src/animation/timeFunc.ts:4](https://github.com/beixiyo/jl-tool/blob/45e2229/src/animation/timeFunc.ts#L4)

## Functions

### applyAnimation

▸ **applyAnimation**(`fn`): () => `void`

在每一帧中执行你的函数

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `fn` | () => `void` \| ``"stop"`` | 将此函数放在 *requestAnimationFrame* 内递归执行，如果此函数返回 `stop` 则停止执行 |

#### Returns

`fn`

返回一个函数，用于取消函数执行

▸ (): `void`

##### Returns

`void`

#### Defined in

[src/animation/applyAnimation.ts:6](https://github.com/beixiyo/jl-tool/blob/45e2229/src/animation/applyAnimation.ts#L6)

___

### createAnimation

▸ **createAnimation**(`stVal`, `endVal`, `animateStVal`, `animateEndVal`, `timeFunc?`): (`curVal`: `number`) => `number`

根据传入的值，返回一个动画函数。通常用来做滚动动画值映射
#### 你可以拿到返回的函数，传入指定范围的值，他会映射成对应的值

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `stVal` | `number` | 动画起点，比如滚动起始位置 |
| `endVal` | `number` | 动画终点，比如滚动终点位置 |
| `animateStVal` | `number` | 动画起点对应的值 |
| `animateEndVal` | `number` | 动画终点对应的值 |
| `timeFunc?` | [`TimeFunc`](animation.md#timefunc) | 动画缓动函数，支持内置函数和自定义函数 |

#### Returns

`fn`

▸ (`curVal`): `number`

##### Parameters

| Name | Type |
| :------ | :------ |
| `curVal` | `number` |

##### Returns

`number`

#### Defined in

[src/animation/createAnimation.ts:15](https://github.com/beixiyo/jl-tool/blob/45e2229/src/animation/createAnimation.ts#L15)

___

### createAnimationByTime

▸ **createAnimationByTime**\<`T`, `P`\>(`target`, `finalProps`, `durationMS`, `animationOpts?`): () => `void`

根据传入对象，随着时间推移，自动更新值。类似 GSAP 等动画库

### 不是 CSS 也能用，注意把配置项的 transform 设置为 false，就不会去解析了

- 如果 target 是 *CSSStyleDeclaration* 并且  
- 不是 *transform* 属性 并且  
- 样式表和 *finalProps* 都没有单位，则使用 `px` 作为 `CSS` 单位

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | `T` |
| `P` | extends `FinalProp` |

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `target` | `T` | 要修改的对象，如果是 `CSSStyleDeclaration` 对象，则单位默认为`px` |
| `finalProps` | `P` | 要修改对象的最终属性值，不支持 `transform` 的复合属性 |
| `durationMS` | `number` | 动画持续时间 |
| `animationOpts?` | `AnimationOpts`\<`T`, `P`\> | 配置项，可以控制动画曲线等; 动画单位优先级: `finalProps` > `animationOpts.unit` > `rawEl(原始 DOM 的单位)` |

#### Returns

`fn`

返回一个停止动画函数

▸ (): `void`

##### Returns

`void`

#### Defined in

[src/animation/createAnimationByTime.ts:26](https://github.com/beixiyo/jl-tool/blob/45e2229/src/animation/createAnimationByTime.ts#L26)

___

### genTimeFunc

▸ **genTimeFunc**(`name?`): (`progress`: `number`) => `number`

生成贝塞尔曲线函数

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `name?` | [`TimeFunc`](animation.md#timefunc) | 动画函数名称 |

#### Returns

`fn`

一个接收`0 ~ 1`进度参数的函数

▸ (`progress`): `number`

##### Parameters

| Name | Type |
| :------ | :------ |
| `progress` | `number` |

##### Returns

`number`

#### Defined in

[src/animation/timeFunc.ts:224](https://github.com/beixiyo/jl-tool/blob/45e2229/src/animation/timeFunc.ts#L224)
