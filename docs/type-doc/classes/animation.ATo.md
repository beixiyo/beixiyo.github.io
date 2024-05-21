[@jl-org/tool](../README.md) / [Modules](../modules.md) / [animation](../modules/animation.md) / ATo

# Class: ATo

[animation](../modules/animation.md).ATo

一个动画类 能够链式调用; 请先调用`start`函数, 参数和`createAnimationByTime`一致

**`Example`**

```ts
const aTo = new ATo()
aTo
   .start(
       div1.style,
       {
           left: '200px',
           top: '200px',
           opacity: '0.1'
       },
       1000
   )
   .next(
       div2.style,
       {
           translateX: '50vw',
           translateY: '300px',
       },
       2000,
       {
           transform: true,
           timeFunc: 'ease-in-out'
       }
   )
```

## Table of contents

### Constructors

- [constructor](animation.ATo.md#constructor)

### Methods

- [next](animation.ATo.md#next)
- [start](animation.ATo.md#start)
- [stop](animation.ATo.md#stop)

## Constructors

### constructor

• **new ATo**(): [`ATo`](animation.ATo.md)

#### Returns

[`ATo`](animation.ATo.md)

## Methods

### next

▸ **next**\<`T`, `P`\>(`target`, `finalProps`, `durationMS`, `opt?`): [`ATo`](animation.ATo.md)

等待上一个动画完成后执行 ***第一次请先调用`start`函数***

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | `T` |
| `P` | extends `FinalProp` |

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `target` | `T` | 要修改的对象 如果是`CSSStyleDeclaration`对象 则单位默认为`px` |
| `finalProps` | `P` | 要修改对象的最终属性值 |
| `durationMS` | `number` | 动画持续时间 |
| `opt?` | `AnimationOpt`\<`T`, `P`\> | 配置项 可选参数 |

#### Returns

[`ATo`](animation.ATo.md)

返回一个停止动画函数

#### Defined in

animation/ATo.ts:69

___

### start

▸ **start**\<`T`, `P`\>(`target`, `finalProps`, `durationMS`, `opt?`): [`ATo`](animation.ATo.md)

开始执行动画 首次执行请先调用此函数

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | `T` |
| `P` | extends `FinalProp` |

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `target` | `T` | 要修改的对象 如果是`CSSStyleDeclaration`对象 则单位默认为`px` |
| `finalProps` | `P` | 要修改对象的最终属性值 |
| `durationMS` | `number` | 动画持续时间 |
| `opt?` | `AnimationOpt`\<`T`, `P`\> | 配置项 可选参数 |

#### Returns

[`ATo`](animation.ATo.md)

返回一个停止动画函数

#### Defined in

animation/ATo.ts:50

___

### stop

▸ **stop**(): `void`

停止所有动画

#### Returns

`void`

#### Defined in

animation/ATo.ts:80
