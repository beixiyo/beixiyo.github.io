[@jl-org/tool](../README.md) / [Modules](../modules.md) / animation

# Module: animation

## Table of contents

### Classes

- [ATo](../classes/animation.ATo.md)

### Functions

- [applyAnimation](animation.md#applyanimation)
- [createAnimation](animation.md#createanimation)
- [createAnimationByTime](animation.md#createanimationbytime)
- [genTimeFunc](animation.md#gentimefunc)

## Functions

### applyAnimation

▸ **applyAnimation**(`fn`): () => `void`

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `fn` | () => `void` \| ``"stop"`` | 将此函数放在`requestAnimationFrame`内递归执行 如果此函数返回`stop`则停止执行 |

#### Returns

`fn`

返回一个函数 用于取消函数执行

▸ (): `void`

##### Returns

`void`

#### Defined in

animation/applyAnimation.ts:5

___

### createAnimation

▸ **createAnimation**(`stVal`, `endVal`, `animateStVal`, `animateEndVal`, `timeFunc?`): (`curVal`: `number`) => `number`

根据传入的值 返回一个动画函数

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `stVal` | `number` | 动画起点 比如滚动起始位置 |
| `endVal` | `number` | 动画终点 比如滚动终点位置 |
| `animateStVal` | `number` | 动画起点对应的值 |
| `animateEndVal` | `number` | 动画终点对应的值 |
| `timeFunc?` | `TimeFunc` | 动画缓动函数 支持内置函数和自定义函数 |

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

animation/createAnimation.ts:13

___

### createAnimationByTime

▸ **createAnimationByTime**\<`T`, `P`\>(`target`, `finalProps`, `durationMS`, `animationOpts?`): () => `void`

根据传入对象 随着时间推移 自动更新值

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | `T` |
| `P` | extends `FinalProp` |

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `target` | `T` | 要修改的对象 如果是`CSSStyleDeclaration`对象 则单位默认为`px` |
| `finalProps` | `P` | 要修改对象的最终属性值 不支持`transform`的复合属性 |
| `durationMS` | `number` | 动画持续时间 |
| `animationOpts?` | `AnimationOpts`\<`T`, `P`\> | 配置项，可选参数; 动画单位优先级: `finalProps` > `option.unit` > `rawEl(原始 DOM 的单位)`; 如果 ***target 是 CSSStyleDeclaration*** 并且 ***不是 transform*** 属性 并且 ***样式表和 finalProps 都没有单位***，则使用 `px` 作为 `CSS` 单位 |

#### Returns

`fn`

返回一个停止动画函数

▸ (): `void`

##### Returns

`void`

#### Defined in

animation/createAnimationByTime.ts:21

___

### genTimeFunc

▸ **genTimeFunc**(`name?`): (`progress`: `number`) => `number`

生成贝塞尔曲线函数

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `name?` | `TimeFunc` | 动画函数名称 |

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

animation/timeFunc.ts:218
