[@jl-org/tool](../README.md) / [Modules](../modules.md) / tools/arrTools

# Module: tools/arrTools

## Table of contents

### Functions

- [arrToChunk](tools_arrTools.md#arrtochunk)
- [arrToTree](tools_arrTools.md#arrtotree)
- [binarySearch](tools_arrTools.md#binarysearch)
- [getPageData](tools_arrTools.md#getpagedata)
- [getSum](tools_arrTools.md#getsum)
- [groupBy](tools_arrTools.md#groupby)

## Functions

### arrToChunk

▸ **arrToChunk**\<`T`\>(`arr`, `size`): `T`[][]

把数组分成 n 块

#### Type parameters

| Name |
| :------ |
| `T` |

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `arr` | `T`[] | 数组 |
| `size` | `number` | 每个数组大小 |

#### Returns

`T`[][]

返回二维数组

#### Defined in

tools/arrTools.ts:229

___

### arrToTree

▸ **arrToTree**\<`T`\>(`arr`): `TreeData`\<`T`\>[]

扁平数组转递归树

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends `TreeItem` |

#### Parameters

| Name | Type |
| :------ | :------ |
| `arr` | `T`[] |

#### Returns

`TreeData`\<`T`\>[]

**`Example`**

```ts
const arr = [
   { id: 1, name: '部门1', pid: 0 },
   { id: 2, name: '部门2', pid: 1 },
   { id: 3, name: '部门3', pid: 1 },
   { id: 4, name: '部门4', pid: 3 },
   { id: 5, name: '部门5', pid: 4 },
   { id: 6, name: '部门6', pid: 1 },
]
const treeData = arrToTree(arr)
```

#### Defined in

tools/arrTools.ts:187

___

### binarySearch

▸ **binarySearch**\<`T`\>(`arr`, `target`): `number`

二分查找，必须是正序的数组

#### Type parameters

| Name |
| :------ |
| `T` |

#### Parameters

| Name | Type |
| :------ | :------ |
| `arr` | `T`[] |
| `target` | `T` |

#### Returns

`number`

#### Defined in

tools/arrTools.ts:242

___

### getPageData

▸ **getPageData**\<`T`\>(`arr`, `curPage`, `pageSize?`): `T`[]

计算分页的当前数据

#### Type parameters

| Name |
| :------ |
| `T` |

#### Parameters

| Name | Type | Default value | Description |
| :------ | :------ | :------ | :------ |
| `arr` | `T`[] | `undefined` | 全部数据的数组 |
| `curPage` | `number` | `undefined` | 当前页 |
| `pageSize` | `number` | `20` | 一页大小，默认 20 |

#### Returns

`T`[]

#### Defined in

tools/arrTools.ts:11

___

### getSum

▸ **getSum**\<`T`\>(`arr`, `handler?`): `number`

对数组求和

#### Type parameters

| Name |
| :------ |
| `T` |

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `arr` | `T`[] | - |
| `handler?` | (`item`: `T`) => `number` | 可以对数组每一项进行操作，返回值将会被相加 |

#### Returns

`number`

#### Defined in

tools/arrTools.ts:19

___

### groupBy

▸ **groupBy**\<`T`\>(`data`, `key`, `operateKey`, `action?`, `enableParseFloat?`, `enableDeepClone?`): `any`[]

给定一个数组，根据 key 进行分组  
分组内容默认放入数组中，你也可以指定为 `'+' | '-' | '*' | '/' | '**'` 进行相应的操作  

你也可以把整个对象进行分组（设置 `operateKey` 为 `null`），他会把整个对象放入数组。而不是进行 加减乘除 等操作

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends `Record`\<`BaseKey`, `any`\> |

#### Parameters

| Name | Type | Default value | Description |
| :------ | :------ | :------ | :------ |
| `data` | `T`[] | `undefined` | 要分组的数组 |
| `key` | keyof `T` | `undefined` | 要进行分组的 **键** |
| `operateKey` | keyof `T` | `undefined` | 要操作的 **键**，填 `null` 则对整个对象进行分组，并且会把 `action` 设置为 `arr` |
| `action` | ``"-"`` \| ``"arr"`` \| ``"+"`` \| ``"*"`` \| ``"/"`` \| ``"**"`` | `'arr'` | 操作行为，默认放入数组，你也可以进行相应的操作，`'+'` 为加法，`'-'` 为减法，`'*'` 为乘法，`'/'` 为除法，`'**'` 为乘方 |
| `enableParseFloat` | `boolean` | `false` | 默认 false，当你指定 action 为数值操作时，是否使用 parseFloat，这会把 '10px' 也当成数字 |
| `enableDeepClone` | `boolean` | `false` | 是否深拷贝，默认 false |

#### Returns

`any`[]

**`Example`**

```ts
const input = [{ type: 'chinese', score: 10 }, { type: 'chinese', score: 100 }]
groupBy(input, 'type', 'score') => [{ type: 'chinese', score: [10, 100] }]
groupBy(input, 'type', null) => [ { type: 'chinese', children: [{ ... }] }, ... ]
```

#### Defined in

tools/arrTools.ts:52
